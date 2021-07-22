#! /usr/bin/env bash

# Trabalhando com o ping
# em um cicle for.

#for link in "google.com" "facebook.com" "gmail.com"; do
#	ping -c 2 "$link"
#done

for link in "google.com" "facebook.com" "gmail.com"; do
	if [[ "$link" = 'google.com' ]]; then
		echo "Link do google: $link"
	elif [[ "$link" = 'facebook.com' ]]; then
		echo "Link do facebook: $link"
	elif [[ "$link" = 'gmail.com' ]]; then
		echo "Link do gmail: $link"
	fi
done
