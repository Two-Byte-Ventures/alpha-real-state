"use client";
import { useState, useEffect, useRef } from "react";
import { Modal, ModalContent, ModalHeader, ModalBody, ModalFooter, Button, Input, Select, SelectItem, useDisclosure } from "@nextui-org/react";
import { CldUploadWidget } from 'next-cloudinary';
import Image from 'next/image';
import { Plus } from "@/app/_components/Icons";
import { useTranslations } from "@/app/hooks/use-translations";
import useSourcesStore from "../stores/useSourcesStore";
import MapCoordinatePicker from "./MapCoordinatePicker";

const AddHousingControl = () => {
  const { isOpen, onOpen, onOpenChange } = useDisclosure();
  const { addHousingItem, statesGeoJSON, municipalitiesGeoJSON } = useSourcesStore();
  const { t } = useTranslations();
  
  const mapboxToken = process.env.NEXT_PUBLIC_MAPBOX_ACCESS_TOKEN;
  
  const [formData, setFormData] = useState({
    name: "",
    price: "",
    type: "",
    percentage: "",
    state_name: "",
    mun_name: "",
    longitude: "",
    latitude: "",
    tag: "",
    url: ""
  });

  const [isSubmitting, setIsSubmitting] = useState(false);
  const [error, setError] = useState(null);
  const [success, setSuccess] = useState(false);
  const [uploadedImages, setUploadedImages] = useState([]);
  const [cloudinaryData, setCloudinaryData] = useState({ folder: '', tag: '' });
  
  // Use ref to store current cloudinary data to avoid closure issues
  const cloudinaryDataRef = useRef({ folder: '', tag: '' });

  // Generate Cloudinary data when state and municipality are selected
  useEffect(() => {
    console.log('useEffect triggered:', { state_name: formData.state_name, mun_name: formData.mun_name });
    
    if (formData.state_name && formData.mun_name) {
      // Helper function to get location IDs
      const selectedState = statesGeoJSON?.features?.find(
        feature => feature.properties.state_name === formData.state_name
      );
      const selectedMunicipality = municipalitiesGeoJSON?.features?.find(
        feature => feature.properties.mun_name === formData.mun_name && 
                   feature.properties.state_code === selectedState?.properties.state_code
      );
      
      console.log('Found state:', selectedState);
      console.log('Found municipality:', selectedMunicipality);
      
      const countryId = "1"; // Mexico country ID from database
      const stateId = selectedState?.properties.state_code || "";
      const municipalityId = selectedMunicipality?.properties.mun_code || "";
      
      console.log('IDs:', { countryId, stateId, municipalityId });
      
      const randomId = Math.random().toString(36).substr(2, 9);
      
      const folder = `housing_app/${countryId}/${stateId}/${municipalityId}`;
      const tag = `${countryId}_${stateId}_${municipalityId}_${randomId}`;
      
      console.log('Generated:', { folder, tag });
      
      const newCloudinaryData = { folder, tag };
      setCloudinaryData(newCloudinaryData);
      cloudinaryDataRef.current = newCloudinaryData; // Update ref as well
      
      // Also update the form data with the tag
      setFormData(prev => ({
        ...prev,
        tag: tag
      }));
    } else {
      console.log('Clearing cloudinary data');
      const emptyData = { folder: '', tag: '' };
      setCloudinaryData(emptyData);
      cloudinaryDataRef.current = emptyData; // Update ref as well
      setFormData(prev => ({
        ...prev,
        tag: ''
      }));
    }
  }, [formData.state_name, formData.mun_name, statesGeoJSON, municipalitiesGeoJSON]);

  const housingTypes = [
    { key: "house", label: t("types.house") },
    { key: "plaza", label: t("types.plaza") },
    { key: "industrial", label: t("types.industrial") }
  ];

  // Extract unique states from GeoJSON
  const stateOptions = statesGeoJSON?.features?.map(feature => ({
    key: feature.properties.state_name,
    label: feature.properties.state_name
  })).sort((a, b) => a.label.localeCompare(b.label)) || [];

  // Filter municipalities based on selected state
  const getFilteredMunicipalities = (selectedStateName) => {
    if (!selectedStateName || !municipalitiesGeoJSON?.features || !statesGeoJSON?.features) return [];
    
    // First find the state_code for the selected state name
    const selectedState = statesGeoJSON.features.find(
      feature => feature.properties.state_name === selectedStateName
    );
    
    if (!selectedState) return [];
    
    const selectedStateCode = selectedState.properties.state_code;
    
    // Then filter municipalities by state_code
    return municipalitiesGeoJSON.features
      .filter(feature => feature.properties.state_code === selectedStateCode)
      .map(feature => ({
        key: feature.properties.mun_name,
        label: feature.properties.mun_name
      }))
      .sort((a, b) => a.label.localeCompare(b.label));
  };

  const municipalityOptions = getFilteredMunicipalities(formData.state_name);

  const handleInputChange = (field, value) => {
    setFormData(prev => ({
      ...prev,
      [field]: value
    }));
  };

  const handleStateChange = (stateName) => {
    setFormData(prev => ({
      ...prev,
      state_name: stateName,
      mun_name: "" // Clear municipality when state changes
    }));
  };

  const handleCoordinatesChange = ({ longitude, latitude }) => {
    setFormData(prev => ({
      ...prev,
      longitude: longitude.toString(),
      latitude: latitude.toString()
    }));
  };

  const resetForm = () => {
    setFormData({
      name: "",
      price: "",
      type: "",
      percentage: "",
      state_name: "",
      mun_name: "",
      longitude: "",
      latitude: "",
      tag: "",
      url: ""
    });
    setUploadedImages([]); // Clear uploaded images
    const emptyData = { folder: '', tag: '' };
    setCloudinaryData(emptyData); // Clear cloudinary data
    cloudinaryDataRef.current = emptyData; // Clear ref as well
    setError(null);
    setSuccess(false);
  };

  const handleSubmit = async () => {
    setIsSubmitting(true);
    setError(null);
    try {
      // Add the housing item using the store function
      await addHousingItem(formData);
      
      // Show success message
      setSuccess(true);
      
      // Reset form and close modal after a brief delay
      setTimeout(() => {
        resetForm();
        onOpenChange(false);
      }, 1500);
    } catch (error) {
      console.error("Error adding housing item:", error);
      setError(t("housing.addError"));
    } finally {
      setIsSubmitting(false);
    }
  };

  const isFormValid = formData.name && formData.price && formData.type && 
                     formData.state_name && formData.mun_name && 
                     formData.longitude && formData.latitude &&
                     uploadedImages.length > 0;

  return (
    <>
      <div className="absolute bottom-4 right-4 z-20">
        <Button
          isIconOnly
          color="primary"
          variant="solid"
          className="rounded-full w-12 h-12 shadow-lg"
          onPress={onOpen}
          aria-label={t("housing.add")}
        >
          <Plus size={20} />
        </Button>
      </div>

      <Modal 
        isOpen={isOpen} 
        onOpenChange={onOpenChange}
        placement="center"
        size="2xl"
        scrollBehavior="inside"
      >
        <ModalContent>
          {(onClose) => (
            <>
              <ModalHeader className="flex flex-col gap-1">
                {t("housing.addNew")}
              </ModalHeader>
              <ModalBody>
                {error && (
                  <div className="bg-red-50 border border-red-200 text-red-700 px-4 py-3 rounded mb-4">
                    {error}
                  </div>
                )}
                {success && (
                  <div className="bg-green-50 border border-green-200 text-green-700 px-4 py-3 rounded mb-4">
                    {t("housing.addSuccess")}
                  </div>
                )}
                <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                  <Input
                    label={t("housing.name")}
                    placeholder={t("housing.namePlaceholder")}
                    value={formData.name}
                    onValueChange={(value) => handleInputChange("name", value)}
                    isRequired
                  />
                  <Input
                    label={t("housing.price")}
                    placeholder={t("housing.pricePlaceholder")}
                    type="number"
                    value={formData.price}
                    onValueChange={(value) => handleInputChange("price", value)}
                    isRequired
                  />
                  <Select
                    label={t("housing.type")}
                    placeholder={t("housing.typePlaceholder")}
                    selectedKeys={formData.type ? [formData.type] : []}
                    onSelectionChange={(keys) => handleInputChange("type", Array.from(keys)[0] || "")}
                    isRequired
                  >
                    {housingTypes.map((type) => (
                      <SelectItem key={type.key} value={type.key}>
                        {type.label}
                      </SelectItem>
                    ))}
                  </Select>
                  <Input
                    label={t("housing.percentage")}
                    placeholder={t("housing.percentagePlaceholder")}
                    type="number"
                    step="0.1"
                    value={formData.percentage}
                    onValueChange={(value) => handleInputChange("percentage", value)}
                  />
                  <Select
                    label={t("housing.state")}
                    placeholder={t("housing.statePlaceholder")}
                    selectedKeys={formData.state_name ? [formData.state_name] : []}
                    onSelectionChange={(keys) => handleStateChange(Array.from(keys)[0] || "")}
                    isRequired
                  >
                    {stateOptions.map((state) => (
                      <SelectItem key={state.key} value={state.key}>
                        {state.label}
                      </SelectItem>
                    ))}
                  </Select>
                  <Select
                    label={t("housing.municipality")}
                    placeholder={formData.state_name ? t("housing.municipalityPlaceholder") : t("housing.selectStateFirst")}
                    selectedKeys={formData.mun_name ? [formData.mun_name] : []}
                    onSelectionChange={(keys) => handleInputChange("mun_name", Array.from(keys)[0] || "")}
                    isRequired
                    isDisabled={!formData.state_name}
                  >
                    {municipalityOptions.map((municipality) => (
                      <SelectItem key={municipality.key} value={municipality.key}>
                        {municipality.label}
                      </SelectItem>
                    ))}
                  </Select>
                  <Input
                    label={t("housing.tag")}
                    placeholder={t("housing.tagPlaceholder")}
                    value={formData.tag}
                    onValueChange={(value) => handleInputChange("tag", value)}
                    isReadOnly={true}
                    isDisabled={true}
                    variant="flat"
                    color="default"
                    classNames={{
                      input: "text-gray-400 cursor-not-allowed",
                      inputWrapper: "bg-gray-100 border-gray-200 opacity-60",
                      label: "text-gray-400"
                    }}
                    description={t("housing.tagAutoGenerated")}
                  />
                  <Input
                    label={t("housing.url")}
                    placeholder={t("housing.urlPlaceholder")}
                    value={formData.url}
                    onValueChange={(value) => handleInputChange("url", value)}
                  />
                </div>
                
                {/* Image Upload Section */}
                <div className="mt-4">
                  <label className="block text-sm font-medium text-gray-700 mb-2">
                    {t("housing.images")} *
                  </label>
                  
                  <CldUploadWidget
                    key={`${cloudinaryData.folder}-${cloudinaryData.tag}`} // Force re-render when data changes
                    cloudName={process.env.NEXT_PUBLIC_CLOUDINARY_CLOUD_NAME}
                    uploadPreset={process.env.NEXT_PUBLIC_CLOUDINARY_UPLOAD_PRESET}
                    options={{
                      multiple: true,
                      maxFiles: 10,
                      resourceType: "image",
                      clientAllowedFormats: ["jpg", "jpeg", "png", "webp"],
                      maxFileSize: 5000000, // 5MB
                      sources: ["local", "camera"],
                      language: "es",
                      // Pass folder and tags in options with current values
                      ...(cloudinaryData.folder && { folder: cloudinaryData.folder }),
                      ...(cloudinaryData.tag && { tags: [cloudinaryData.tag] }),
                      // Force override preset settings
                      context: cloudinaryData.tag ? { custom_tag: cloudinaryData.tag } : undefined
                    }}
                    onSuccess={(result) => {
                      console.log('Upload result:', result.info);
                      console.log('Expected folder (state):', cloudinaryData.folder);
                      console.log('Expected tag (state):', cloudinaryData.tag);
                      console.log('Expected folder (ref):', cloudinaryDataRef.current.folder);
                      console.log('Expected tag (ref):', cloudinaryDataRef.current.tag);
                      console.log('Actual folder:', result.info.folder);
                      console.log('Actual tags:', result.info.tags);
                      console.log('Full public_id:', result.info.public_id);
                      
                      if (result.info) {
                        setUploadedImages(prev => [...prev, {
                          public_id: result.info.public_id,
                          url: result.info.secure_url,
                          thumbnail: result.info.thumbnail_url || result.info.secure_url
                        }]);
                      }
                    }}
                  >
                    {({ open }) => {
                      return (
                        <div className="space-y-2">
                          {/* Debug info */}
                          {cloudinaryData.folder && (
                            <div className="text-xs text-blue-600 bg-blue-50 p-2 rounded">
                              <strong>Debug:</strong> Folder: {cloudinaryData.folder}, Tag: {cloudinaryData.tag}
                            </div>
                          )}
                          
                          <button
                            type="button"
                            onClick={() => {
                              if (!formData.state_name || !formData.mun_name) {
                                setError(t("housing.selectStateFirst"));
                                return;
                              }
                              console.log('About to upload with:', { folder: cloudinaryData.folder, tag: cloudinaryData.tag });
                              open();
                            }}
                          className="w-full h-32 border-2 border-dashed border-gray-300 rounded-lg flex flex-col items-center justify-center hover:border-gray-400 transition-colors disabled:opacity-50"
                          disabled={!formData.state_name || !formData.mun_name}
                        >
                          <Plus size={24} className="text-gray-400 mb-2" />
                          <span className="text-sm text-gray-600 text-center px-4">
                            {!formData.state_name || !formData.mun_name 
                              ? t("housing.selectStateFirst")
                              : "Click to upload images (max 10 files)"
                            }
                          </span>
                        </button>
                        
                        {/* Display uploaded images */}
                        {uploadedImages.length > 0 && (
                          <div className="grid grid-cols-3 gap-2">
                            {uploadedImages.map((image, index) => (
                              <div key={index} className="relative">
                                <Image 
                                  src={image.thumbnail || image.url} 
                                  alt={`Upload ${index + 1}`}
                                  width={80}
                                  height={80}
                                  className="w-full h-20 object-cover rounded border"
                                />
                                <button
                                  type="button"
                                  onClick={() => {
                                    setUploadedImages(prev => prev.filter((_, i) => i !== index));
                                  }}
                                  className="absolute -top-2 -right-2 bg-red-500 text-white rounded-full w-6 h-6 flex items-center justify-center text-xs hover:bg-red-600"
                                >
                                  ×
                                </button>
                              </div>
                            ))}
                          </div>
                        )}
                        
                        {uploadedImages.length > 0 && (
                          <p className="text-sm text-green-600">
                            {uploadedImages.length} image(s) uploaded to: {cloudinaryData.folder || "housing_app/temp"}
                          </p>
                        )}
                        </div>
                      );
                    }}
                  </CldUploadWidget>
                </div>
                
                {/* Map Coordinate Picker */}
                <div className="mt-4">
                  <label className="block text-sm font-medium text-gray-700 mb-2">
                    {t("housing.coordinates")} *
                  </label>
                  <MapCoordinatePicker
                    longitude={parseFloat(formData.longitude) || null}
                    latitude={parseFloat(formData.latitude) || null}
                    onCoordinatesChange={handleCoordinatesChange}
                    mapboxToken={mapboxToken}
                  />
                </div>
                
                {error && (
                  <div className="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded mt-4">
                    {error}
                  </div>
                )}
                
                {success && (
                  <div className="bg-green-100 border border-green-400 text-green-700 px-4 py-3 rounded mt-4">
                    {t("housing.addSuccess")}
                  </div>
                )}
              </ModalBody>
              <ModalFooter>
                <Button color="danger" variant="light" onPress={onClose}>
                  {t("housing.cancel")}
                </Button>
                <Button 
                  className="bg-black text-white hover:bg-gray-800 data-[pressed=true]:scale-[0.97] data-[hover=true]:bg-gray-800"
                  onPress={handleSubmit}
                  isLoading={isSubmitting}
                  isDisabled={!isFormValid}
                >
                  {t("housing.save")}
                </Button>
              </ModalFooter>
            </>
          )}
        </ModalContent>
      </Modal>
    </>
  );
};

export default AddHousingControl;
