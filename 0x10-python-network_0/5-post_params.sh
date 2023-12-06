#!/bin/bash

# Check if the number of parameters is correct
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 URL"
    exit 1
fi

# Get the URL from the command line argument
url="$1"

# Set the POST parameters
email="test@gmail.com"
subject="I will always be here for PLD"

# Use curl to send a POST request to the URL with the specified parameters
curl -s -X POST "$url" -d "email=$email&subject=$subject"

