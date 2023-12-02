#!/usr/bin/python3
import urllib.request
import sys

if len(sys.argv) != 2:
    print("Usage: {} <URL>".format(sys.argv[0]))
    sys.exit(1)

url = sys.argv[1]

req = urllib.request.Request(url)
with urllib.request.urlopen(req) as response:
    x_request_id = response.info().get('X-Request-Id')
    print(x_request_id)

