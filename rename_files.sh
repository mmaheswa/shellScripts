#!/bin/bash

# Directory path where text files are located
directory="/path/to/files"

# Check if the directory exists
if [ ! -d "$directory" ]; then
    echo "Error: Directory not found."
    exit 1
fi

# Move to the specified directory
cd "$directory"

# Loop through each text file in the directory
for file in *.txt; do
    # Create a timestamp using the current date and time
    timestamp=$(date +'%Y%m%d%H%M%S')

    # Extract the filename without the extension
    filename="${file%.*}"

    # Add the timestamp to the filename
    new_filename="${filename}_${timestamp}.txt"

    # Rename the file
    mv "$file" "$new_filename"

    echo "Renamed: $file -> $new_filename"
done

echo "All text files renamed with timestamps."
