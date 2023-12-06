#!/bin/bash

# Check if the number of parameters is correct
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 URL"
    exit 1
fi

# Get the URL from the command line argument
url="$1"

# Use curl to send a GET request to the URL with the specified header
curl -sH "X-School-User-Id: 98" "$url"

