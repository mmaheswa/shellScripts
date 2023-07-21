#!/bin/bash

# Source and destination directories
source_directory="/path/to/source"
destination_directory="/path/to/destination"

# Check if both directories exist
if [ ! -d "$source_directory" ] || [ ! -d "$destination_directory" ]; then
    echo "Error: Source or destination directory not found."
    exit 1
fi

# Move files from the source to the destination directory
mv "$source_directory"/*.txt "$destination_directory/"

echo "All text files moved to $destination_directory."
