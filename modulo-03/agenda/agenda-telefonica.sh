#! /usr/bin/env bash

# Agenda telefonica que puxa informação
# de um banco de dados CSV.
# 1 - Vamos armazenar o usuário e informações ao banco de dados

#===============================================
# FIXME Melhorar o campo de busca, e puxar várias
# ID's ao mesmo tempo via parâmetro
#=============Váriaveis Globais=================
banco_de_dados='banco-de-dados.txt'

#===============Cores===========================
vermelho="\E[31;1m"
fecha_cor="\E[m"

#==============TESTES INICIAS===================
[[ ! -e "$banco_de_dados" ]] && > "$banco_de_dados"

(( $UID == 0 )) && { echo "Root não!" exit 1; }

#===================Funções=====================
function adicionar() {
# Função para adicionar usuários ao banco de dados

lista=('Nome' 'Sobrenome' 'CPF' 'DDD' 'Telefone')
i='1'
	for dados in "${lista[@]}"; do
		while [[ -z "${dados[i]}" ]]; do
			read -p "${dados}: " dados[$i]
		done
		((i++))
	done
if ! grep -qo "${dados[3]}" "$banco_de_dados"; then
	# Enviando os dados para o banco de dados...
	dados[3]=$(sed 's/\./-/g ' <<< "${dados[3]}")
	ID=$(($(wc -l < "$banco_de_dados")+1))
	if echo "${ID}:${dados[3],,}:${dados[1],,}:${dados[2],,}:${dados[4],,}:${dados[5],,}" >> "$banco_de_dados"; then
		echo "Dados enviados com sucesso para: ${banco_de_dados}"
	else
		echo 'Houve algum erro!'
	fi
else
	echo 'O ID existe no banco de dados! Saindo...'
	exit 1
fi
} # Fim da função adicionar

function buscar() {
# Função para buscar o contato informado como parâmetro no banco de dados

	read -p 'Digite o número do ID: ' idBusca
	[[ -z $idBusca ]] && { echo 'Nenhum número informado!'; exit 1; }
	if grep -q -s "^$idBusca" "$banco_de_dados"; then 
		ID=$(grep "^$idBusca" "$banco_de_dados" | cut -d ':' -f '1' )	
		nome=$(grep "^$idBusca" "$banco_de_dados" | cut -d ':' -f '3' )	
		sobrenome=$(grep "^$idBusca" "$banco_de_dados" | cut -d ':' -f '4' )	
		cpf=$(grep "^$idBusca" "$banco_de_dados" | cut -d ':' -f '2' )	
		ddd=$(grep "^$idBusca" "$banco_de_dados" | cut -d ':' -f '5' )	
		telefone=$(grep "^$idBusca" "$banco_de_dados" | cut -d ':' -f '6' )	
	else
		echo "ID ${idBusca} não encontrado no banco de dados!"
		exit 1
	fi	
	cat <<-EOF
	====================================
	ID Usuário: $ID
	Nome: $nome
	Sobrenome: $sobrenome
	CPF: $cpf
	Telefone com DDD: ($ddd) $telefone
	====================================
	EOF
} # Fim da função buscar

#============Menu de entrada====================
case $1 in
	-a|--adicionar) shift; adicionar;; # Chamada da função adicionar.
	-b|--busca) buscar;; # Chamada da função buscar.
esac
