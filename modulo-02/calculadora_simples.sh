#! /usr/bin/env bash

# Verificando se o usuário é root
(( $UID == 0 )) && { echo 'Usuário root, NÃO!'; exit 1; }

function soma(){
	read -p 'Valor 1: ' val_um
	read -p 'Valor 2: ' val_dois
	if [[ -z "$val_um" ]] || [[ -z "$val_dois" ]]; then
		echo 'Favor entrar com os dois valores.'
		soma	# Chamando a função soma
	else
		resultado="$(( $val_um + $val_dois ))"
		echo "O resultado é: $resultado"
		menu	# Chamando a função menu	
	fi
}

function subtracao(){
	read -p 'Valor 1: ' val_um
	read -p 'Valor 2: ' val_dois
	if [[ -z "$val_um" ]] || [[ -z "$val_dois" ]]; then
		echo 'Favor entrar com os dois valores.'
		subtracao	# Chamando a função subtracao
	else
		resultado="$(( $val_um - $val_dois ))"
		echo "O resultado é: $resultado"
		menu	# Chamando a função menu	
	fi
}

function divisao(){
	read -p 'Valor 1: ' val_um
	read -p 'Valor 2: ' val_dois
	if [[ -z "$val_um" ]] || [[ -z "$val_dois" ]]; then
		echo 'Favor entrar com os dois valores.'
		divisao	# Chamando a função divisao
	else
		resultado="$(( $val_um / $val_dois ))"
		echo "O resultado é: $resultado"
		menu	# Chamando a função menu	
	fi
}

function multiplicacao(){
	read -p 'Valor 1: ' val_um
	read -p 'Valor 2: ' val_dois
	if [[ -z "$val_um" ]] || [[ -z "$val_dois" ]]; then
		echo 'Favor entrar com os dois valores.'
		multiplicacao	# Chamando a função multiplicacao
	else
		resultado="$(( $val_um * $val_dois ))"
		echo "O resultado é: $resultado"
		menu	# Chamando a função menu	
	fi
}

function menu(){
	echo '------------------'
	echo '1) Soma'
	echo '2) Subtração'
	echo '3) Divisão'
	echo '4) Multiplicação'
	echo '5) Sair do programa'
	echo '------------------'
	
	read -p 'Escolha uma opção: ' opcao

	case "$opcao" in
		'1') soma ;;			# Chamando a função soma
		'2') subtracao ;;		# Chamando a função subtracao
		'3') divisao ;;			# Chamando a função divisao
		'4') multiplicacao ;;	# Chamando a função multiplicacao
		'5') exit 0 ;;
		*)
			echo 'Opção inválida!'
			menu			# Chamando a função menu
		;;
	esac
}

menu			# Chamando a função menu
