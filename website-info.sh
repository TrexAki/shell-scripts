#!/bin/bash

# connectivity script to check packet loss of any website

read -p "Which site do you want to check? " site

echo "Checking connectivity to $site..."
ping -c 5 "$site"

if [[ $? -eq 0 ]]; then
    echo "No packet loss"
else
    echo "Packet loss detected"
fi

# Let's check some more details of this website
echo
echo "WHOIS info for $site:"
whois "$site" | grep -E "Registrar:|Creation Date:"
