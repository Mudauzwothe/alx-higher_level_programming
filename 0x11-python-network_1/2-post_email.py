#!/usr/bin/python3
import urllib.request
import urllib.parse
import sys

if len(sys.argv) != 3:
    print("Usage: {} <URL> <email>".format(sys.argv[0]))
    sys.exit(1)

url = sys.argv[1]
email = sys.argv[2]

data = urllib.parse.urlencode({'email': email}).encode('utf-8')
req = urllib.request.Request(url, data=data, method='POST')

with urllib.request.urlopen(req) as response:
    content = response.read().decode('utf-8')
    print(content)

