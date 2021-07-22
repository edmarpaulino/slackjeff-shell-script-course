#! /usr/bin/env bash

listagem=$(ls /boot)
listagem_dois=$(ls /home)
listagem_tres=$(ls /home/joaquim)

echo -e "Listando '/boot'\n$listagem\n"
echo -e "Listado '/home'\n$listagem_dois\n"
echo -e "Listado '/home/joaquim'\n$listagem_tres\n"

ID=$(echo "$UID")
diretorio='/home/edmar/Downloads'

echo -e "O ID do usuário logado no momento é: $ID\n"
cd "$diretorio"
echo -e "Executando o comando PWD $(pwd)\n"

diretorio='/home'
echo "Mudando para o diretório $diretorio $(cd "$diretorio")"
echo -e "Executando o comando PWD $(pwd)\n"
