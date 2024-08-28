#!/bin/bash

# Define the input file
input_file="extracted_zones.txt"

# Loop through each domain in the input file
while IFS= read -r domain; do
    # Construct the zone file path and SQL output file
    zone_file="/var/named/${domain}.db"
    sql_output="${domain}.sql"

    # Execute the zone2sql command
    zone2sql --named-conf=/etc/pdns/pdns.d/named.conf --zone-name="$domain" --zone="$zone_file" --gmysql --filter-duplicate-soa=yes --transactions=yes > "$sql_output"

    # Print a success message for each domain
    echo "Generated $sql_output for $domain."
done < "$input_file"

# Print a completion message
echo "All SQL files have been generated."
