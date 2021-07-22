#! /usr/bin/env bash

function status_saida(){
	local diretorio="$HOME"
	ls "$diretorio"
	return 5
}

status_saida 	# Chamada da função
[[ "$?" -eq '0' ]] || exit 1

echo "$?"

