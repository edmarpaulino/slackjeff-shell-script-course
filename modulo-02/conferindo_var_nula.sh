#! /usr/bin/env bash

while true; do
	read -p 'What is your name? ' name
	[[ -z "$name" ]] && echo 'Enter any value' || break
done

echo 'Continuing the script...'
