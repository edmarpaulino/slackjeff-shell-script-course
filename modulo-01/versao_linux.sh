#! /usr/bin/env bash

diretorio='/home/edmar'

#======FUNÇÕES======#
function versao_linux(){
	versao=$(cat /etc/os-release)
	local diretorio='/home/joaquim'
	echo "$diretorio"
}

versao_linux	# Chamando função
echo "$versao"
echo "$diretorio"
