#! /usr/bin/env bash

# Menu program to open applications
# Mozilla Firefox
# Kate
# Konsole

echo '#==============================#'
echo '1) Open Mozilla Firefox'
echo '2) Open Kate'
echo '3) Open Konsole'
echo '4) Exit'
echo '#==============================#'
read -p 'Select a option: ' option

if [[ "$option" -eq '1' ]]; then
    echo 'Opening Mozilla Firefox...'
    firefox
elif [[ "$option" -eq '2' ]]; then
    echo 'Opening Kate...'
    kate
elif [[ "$option" -eq '3' ]]; then
    echo 'Opening Konsole...'
    konsole
elif [[ "$option" -eq '4' ]]; then
    echo 'Exiting the program...'
    exit 1
else
    echo 'Invalid selection![Exit]'
    exit 1
fi
