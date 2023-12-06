#!/bin/bash

# Check if the number of parameters is correct
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 URL"
    exit 1
fi

# Get the URL from the command line argument
url="$1"

# Use curl to send a request to the URL and display the size of the body in bytes
size=$(curl -sI "$url" | grep -i "Content-Length" | awk '{print $2}' | tr -d '\r\n')

# Check if the size is a number
if [[ "$size" =~ ^[0-9]+$ ]]; then
    echo "$size"
else
    echo "Error: Unable to determine the size of the body."
    exit 1
fi

