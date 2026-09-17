#!/bin/bash

echo "Building Beep Extension..."
echo ""

# Build the React app
npm run build

echo ""
echo "Creating distribution package..."

# Create dist-landing folder
rm -rf dist-landing
mkdir dist-landing

# Copy landing page
cp landing/index.html dist-landing/index.html

# Create extension zip
cd dist
zip -r ../dist-landing/beep-extension.zip .
cd ..

echo ""
echo "Done!"
echo ""
echo "Files ready in 'dist-landing' folder:"
echo "  - index.html (Landing page)"
echo "  - beep-extension.zip (Downloadable extension)"
echo ""
echo "To deploy:"
echo "  1. Upload the 'dist-landing' folder contents to any static hosting"
echo "  2. The download button will automatically serve beep-extension.zip"
echo ""
