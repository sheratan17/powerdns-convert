#!/bin/bash

# Define the input file and a temporary file to store unique content
input_file="extracted_zones.txt"  # Update this to your target file
temp_file=$(mktemp)

# Remove duplicates while preserving the order
awk '!seen[$0]++' "$input_file" > "$temp_file"

# Move the temporary file back to the original file
mv "$temp_file" "$input_file"

# Print a success message
echo "Duplicates removed from $input_file."
