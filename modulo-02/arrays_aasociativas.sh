#! /usr/bin/env bash

declare -A dados

dados[nome]='Edmar'
dados[sobrenome]='Paulino'
dados[idade]='25 anos'
dados[cpf]='xxx.xxx.xxx-xx'

echo -e "O nome é: ${dados[nome]}\nO sobrenome é: ${dados[sobrenome]}"

for i in 'nome' 'sobrenome' 'idade' 'cpf'; do
	echo "$i"	
	echo "${dados[$i]}"
done
