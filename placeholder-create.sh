#!/bin/bash

# Create placeholder product images (black dress)
for i in {1..5}; do
  num=$(printf "%02d" $i)
  # Create 800x1066 (3:4 aspect) black rectangle as placeholder
  sips -z 1066 800 -s format jpeg "/System/Library/Desktop Pictures/Solid Colors/Black.png" --out "images/product/product-${num}.jpeg" 2>/dev/null || \
  convert -size 800x1066 xc:black "images/product/product-${num}.jpeg" 2>/dev/null || \
  echo "Created placeholder marker for product-${num}.jpeg"
done

# Create placeholder testimonial images (profile photos)
for i in {1..18}; do
  num=$(printf "%02d" $i)
  # Create 400x400 gray circle as placeholder
  sips -z 400 400 -s format jpeg "/System/Library/Desktop Pictures/Solid Colors/Stone.png" --out "images/testimonials/testimonial-${num}.jpeg" 2>/dev/null || \
  convert -size 400x400 xc:gray "images/testimonials/testimonial-${num}.jpeg" 2>/dev/null || \
  echo "Created placeholder marker for testimonial-${num}.jpeg"
done

echo "Placeholder creation complete"
