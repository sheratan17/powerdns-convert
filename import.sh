#!/bin/bash

# Define the directory containing the SQL files and database connection details
sql_directory="_"  # Update this path to the directory containing your .sql files
db_name="_"        # Update this to your database name
db_user="_"             # Update this to your MySQL username
db_password="_"         # Update this to your MySQL password
db_host="localhost"                 # Update this to your MySQL host, e.g., localhost

# Loop through each .sql file in the directory
for sql_file in "$sql_directory"/*.sql; do
    # Check if the file exists
    if [[ -f "$sql_file" ]]; then
        # Import the SQL file into the database
        mysql -h "$db_host" -u "$db_user" -p"$db_password" "$db_name" < "$sql_file"

        # Print a success message for each imported file
        echo "Imported $sql_file into $db_name."
    else
        echo "No .sql files found in $sql_directory."
    fi
done

# Print a completion message
echo "All SQL files have been imported."
