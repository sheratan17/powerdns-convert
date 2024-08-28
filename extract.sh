#!/bin/bash

# Define the input and output files
input_file="named.conf"
output_file="extracted_zones.txt"

# Extract content after /var/named/ and remove .db extension
grep -oP '(?<=/var/named/)[^"]+' "$input_file" | sed 's/\.db$//' > "$output_file"

# Print a success message
echo "Extraction completed. Check the file $output_file for results."
