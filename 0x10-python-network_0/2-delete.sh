#!/bin/bash

# Check if the number of parameters is correct
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 URL"
    exit 1
fi

# Get the URL from the command line argument
url="$1"

# Use curl to send a DELETE request to the URL and display the body of the response
curl -sX DELETE "$url"

