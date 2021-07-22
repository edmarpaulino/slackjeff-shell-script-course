#! /usr/bin/env bash

# Agenda telefonica que puxa informação
# de um banco de dados CSV.
# 1 - Vamos armazenar o usuário e informações ao banco de dados

#=============Váriaveis Globais=================
banco_de_dados='banco-de-dados.txt'

declare -A info
info[Nome]=''
info[DDD]=''
info[Telefone]=''

#===============Cores===========================
vermelho="\E[31;1m"
fecha_cor="\E[m"

#==============TESTES INICIAS===================
[[ ! -e "$banco_de_dados" ]] && > "$banco_de_dados"
(( $UID == 0 )) && { echo "Root não!" exit 1; }

#===================Funções=====================
function adicionar() {
	while [[ -z "${info[Nome]}" || -z "${info[DDD]}" || -z "${info[Telefone]}" ]]; do
		for dados in 'Nome' 'DDD' 'Telefone'; do
			read -p "${dados[@]}: " info[$dados] 
		done	
		if [[ -z "${info[Nome]}" || -z "${info[DDD]}" || -z "${info[Telefone]}" ]]; then
			echo -e "${vermelho}Entre com dados válidos!${fecha_cor}"
		fi
	done
}

# Menu de entrada
case $1 in
	-a|--adicionar) adicionar;; # Chamada função adicionar.
esac
