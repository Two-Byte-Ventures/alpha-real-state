# Cloudinary Setup Guide for Housing App

This guide explains how to set up Cloudinary for the housing property image management system.

## Overview

The housing application now uses Cloudinary to manage property images with automatic folder organization and tagging based on geographical location.

### Folder Structure
Images are organized as: `housing_app/{country_id}/{state_id}/{municipality_id}`

### Tagging System
Each property gets a unique tag: `{country_id}_{state_id}_{municipality_id}_{random_id}`

## Setup Instructions

### 1. Create Cloudinary Account
1. Go to [cloudinary.com](https://cloudinary.com) and sign up
2. Note your Cloud Name from the dashboard

### 2. Configure Upload Preset
1. In Cloudinary Console, go to Settings > Upload
2. Scroll down to "Upload presets"
3. Click "Add upload preset"
4. Configure as follows:
   - **Preset name**: `housing_uploads`
   - **Signing Mode**: Unsigned
   - **Resource Type**: Image
   - **Use filename**: Yes
   - **Unique filename**: Yes
   - **Overwrite**: No
   - **Auto-folder**: Enable
   - **Auto-tagging**: Enable

#### Upload Settings Tab:
- **Allowed formats**: jpg, jpeg, png, webp
- **Max file size**: 5000000 (5MB)
- **Max image width**: 1920
- **Max image height**: 1080

#### Transformations Tab:
- **Crop mode**: limit
- **Quality**: auto
- **Format**: auto

### 3. Environment Variables
Update your `.env.local` file with your Cloudinary credentials:

```env
NEXT_PUBLIC_CLOUDINARY_CLOUD_NAME=your_cloud_name_here
```

### 4. Security Considerations
- The upload preset is unsigned for client-side uploads
- Consider implementing server-side signing for production
- Set up webhook notifications for upload monitoring
- Configure moderation for automatic content filtering

## How It Works

### Image Upload Process
1. User selects state and municipality
2. System generates folder path: `housing_app/1/22/11` (example)
3. System generates unique tag: `1_22_11_abc123` (example)
4. User uploads images through Cloudinary widget
5. Images are automatically organized in the correct folder
6. All images are tagged with the property's unique identifier

### Integration with HouseDetails Component
The existing `HouseDetails.js` component uses the tag to display all images for a property:

```javascript
mediaAssets: [
  { tag: property.tag, mediaType: 'image'},
]
```

## Folder Organization Examples

- Mexico > Querétaro > El Marqués: `housing_app/1/22/11`
- Mexico > Querétaro > Corregidora: `housing_app/1/22/6`
- Mexico > Querétaro > Querétaro: `housing_app/1/22/14`

## Tag Examples

- Property in El Marqués: `1_22_11_a8x4z2`
- Property in Corregidora: `1_22_6_m9k7n3`
- Property in Querétaro: `1_22_14_p5r8w1`

## Troubleshooting

### Common Issues

1. **Upload widget not appearing**
   - Check if state and municipality are selected
   - Verify CLOUDINARY_CLOUD_NAME is set correctly

2. **Images not uploading**
   - Verify upload preset "housing_uploads" exists
   - Check preset is set to "unsigned"
   - Ensure file formats are allowed (jpg, jpeg, png, webp)

3. **Images not displaying in gallery**
   - Verify the tag is being saved to the database
   - Check that HouseDetails component is using the correct tag

### Testing
Test the upload functionality by:
1. Selecting a state and municipality
2. Uploading an image
3. Checking Cloudinary console for the image in the correct folder
4. Verifying the tag was applied correctly

## Next Steps

Consider implementing:
- Image compression before upload
- Automatic thumbnail generation
- Image moderation/approval workflow
- Backup storage strategy
- CDN configuration optimization
