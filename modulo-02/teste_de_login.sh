#! /usr/bin/env bash

user='edmar'
pass='123'
tentativas='0'
limite='3'

while :; do
	read -p 'Login: '	_login
	read -t 5 -sp 'Senha: '	_senha
	echo ''
	if [[ "$_login" = "$user" ]] && [[ "$_senha" -eq "$pass" ]]; then
		break
	else
		let tentativas++
		[[ "$tentativas" -eq "$limite" ]] && { echo 'Limite de tentativas atingido!';	exit 1; }
		echo "Tentativas restantes: $(( $limite - $tentativas ))"
	fi
done

echo 'Continuando o programa...'
