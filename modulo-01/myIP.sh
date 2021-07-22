#! /usr/bin/env bash

# Program variables
server1='https://icanhazip.com/'
server2='ifconfig.me'


# Initial tests
echo 'Checking for an internet connection...'
if ! wget -q --spider https://www.google.com; then
    echo 'There is no internet connection![Exit]'
    exit 1;
fi

exec_=$(if ! curl -s "$server2"; then curl -s "$server1"; fi)

echo "Your external IP is: $exec_"
