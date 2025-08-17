"use client";
import { useState } from "react";
import { Modal, ModalContent, ModalHeader, ModalBody, ModalFooter, Button, Input, Select, SelectItem, useDisclosure } from "@nextui-org/react";
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
                     formData.longitude && formData.latitude;

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
                  />
                  <Input
                    label={t("housing.url")}
                    placeholder={t("housing.urlPlaceholder")}
                    value={formData.url}
                    onValueChange={(value) => handleInputChange("url", value)}
                  />
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
