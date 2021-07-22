#! /usr/bin/env bash

PS3='Selecione uma opção:'

select nome in 'Edmar' 'José' 'Maria' 'Ana' 'Sair'; do
		case "$REPLY" in
		1) echo "$nome é trabalhador"			;;
		2) echo "$nome é estudioso"				;;
		3) echo "$nome é inteligente"			;;
		4) echo "$nome é esperta"					;;
		5) exit 0    							;; # ou break para sair do loop
		*) echo 'Esse nome NÃO EXISTE na lista.'	;;
	esac
done
