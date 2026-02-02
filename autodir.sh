#!/bin/bash

# Navigate to the directory containing the PDF files
#cd /home/ocrengine01/Desktop/data-test-10okt

# Loop through all PDF files in the current directory
for file in *.pdf; do
  # Extract the filename without extension
  filename="${file%.pdf}"

  # Create a directory with the name of the file
  mkdir -p "$filename"

  # Move the file into its corresponding directory
  mv "$file" "$filename/"
done