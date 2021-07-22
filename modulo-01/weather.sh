#! /usr/bin/env bash

# Weather forecast program

# Does the user have internet?
echo 'Checking internet connection...'
if ! wget -q --spider https://www.google.com; then
    echo 'There is no internet conection![Exit]'
    exit 1;
fi

# Does the user have the curl tool installed?
echo 'Checking if curl is installed...'
[[ $(type -p curl) ]] || { echo 'You need the curl tool to continue.[Exit]'; exit 1; }

# Data input
read -p 'Enter your location: ' location

# Data output
weather=$(if ! curl -s wttr.in/"$location"; then { echo 'Failed to get the information.'; exit 0; }; fi)

echo 'Weather forecast for your location: '
echo "$weather"

