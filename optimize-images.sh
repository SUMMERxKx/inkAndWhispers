#!/bin/bash

# Create optimized directory if it doesn't exist
mkdir -p images/optimized

# Optimize each image
for img in images/*.jpg; do
    if [ -f "$img" ]; then
        filename=$(basename "$img")
        echo "Optimizing $filename..."
        convert "$img" -strip -quality 85 -resize "1200x>" "images/optimized/$filename"
    fi
done

echo "Image optimization complete!" 