#! /usr/bin/env bash

# Variaveis de cor do programa
vermelho="\033[31;1m"
verde="\033[32;1m"
fecha_cor="\033[m"

# Conferindo se o usuário passou algum parâmetro
(( $# == 0 )) && { echo 'Precisa passar ao menos um parâmetro.'; exit 1; }

while [[ -n "$1" ]]; do						# Enquanto o parâmetro não for nulo, continua...
	if type -p "$1" >/dev/null; then		# Redirecionando a saída do comando para o buraco negro do linux
		echo -e "${verde}O programa $1 EXISTE${fecha_cor}"
	else
		echo -e "${vermelho}O programa $1 NÃO EXISTE${fecha_cor}"
	fi
	shift
done
