#!/usr/bin/python3
import requests
import sys

if len(sys.argv) != 3:
    print("Usage: {} <username> <token>".format(sys.argv[0]))
    sys.exit(1)

username = sys.argv[1]
token = sys.argv[2]
url = 'https://api.github.com/user'

# Create a basic authentication string using the provided username and token
auth = (username, token)

response = requests.get(url, auth=auth)

# Check if the request was successful (status code 200)
if response.status_code == 200:
    user_data = response.json()
    print(user_data['id'])
else:
    print(None)

