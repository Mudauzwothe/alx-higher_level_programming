#!/bin/bash

# Check if the number of parameters is correct
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 URL"
    exit 1
fi

# Get the URL from the command line argument
url="$1"

# Use curl to send a GET request to the URL and display the body of the response
curl -sL -w "%{http_code}" "$url" -o /dev/null | {
    read -r status_code
    if [ "$status_code" -eq 200 ]; then
        curl -s "$url"
    else
        echo "Error: Unexpected status code - $status_code"
        exit 1
    fi
}

