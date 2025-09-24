#!/bin/bash

curl --output lists/wpad.txt --url "https://data.iana.org/TLD/tlds-alpha-by-domain.txt"
sed -r -i 's/^([^\#])/wpad\.\1/g' lists/wpad.txt
