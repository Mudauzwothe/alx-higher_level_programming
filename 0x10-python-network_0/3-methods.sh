#!/bin/bash

# Check if the number of parameters is correct
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 URL"
    exit 1
fi

# Get the URL from the command line argument
url="$1"

# Use curl to send an OPTIONS request to the URL and display the allowed methods
curl -sI -X OPTIONS "$url" | grep "Allow:" | cut -d ' ' -f 2-

