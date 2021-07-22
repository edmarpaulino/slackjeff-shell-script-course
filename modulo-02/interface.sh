#! /usr/bin/env bash

vermelho="\033[31;1m"
fecha="\033[m"

clear
echo -e "\tDOS - Emulador do Windows"
while true; do
	read -p $'\033[31;1m>\033[m' entrada
	if [[ "$entrada" = "cls" ]]; then
		clear	
	elif [[ "$entrada" = "exit" ]]; then
		exit 0
	fi
done
