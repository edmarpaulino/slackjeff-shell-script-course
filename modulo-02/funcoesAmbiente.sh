#! /usr/bin/env bash

parametros(){
	[[ -z "$1" ]] && echo "Variável é nula" || echo "Variável não é nula"
}

set -x

parametros
parametros "$@" 
