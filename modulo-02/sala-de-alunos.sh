#! /usr/bin/env bash

#nome01='Francisco'
#nome02='Jefferson'
#nome03='Fernando'
#nome04='Paulo'
#nome05='Pietra'
#nome06='Joaquim'

# Arrays Comuns com atribuição direta com o índice
#nome[0]='Francisco'
#nome[1]='Jefferson'
#nome[2]='Fernando'
#nome[3]='Paulo'
#nome[4]='Pietra'
#nome[5]='Joaquim'
#nome[6]='Pedro'

#echo "Nome do primeiro aluno: $nome01"
#echo "Nome do segundo aluno: $nome02"
#echo "Nome do terceiro aluno: $nome03"
#echo "Nome do quarto aluno: $nome04"
#echo "Nome do quinto aluno: $nome05"
#echo "Nome do sexto aluno: $nome06"

#i='0'	

# Chamada Array com índice
#while (( i < 7 )); do
#	echo "${nome[i]}"
#	let i++
#done

# Lista de nomes

nome=('Francisco' 'Jefferson' 'Fernado' 'Paulo' 'Pietra' 'Joaquim')

echo "${nome[1]}"

# Lista de gostosuras
lista_de_gostosuras=('Pizza' 'Hotdog' 'Pão de queijo' 'Pastel' 'Churrasco' 'Lanche')

# Chamando todos as arrays de uma vez... Pode usar o * também mas é mais comum usar @
echo "Eu gosto de tudo isso: ${lista_de_gostosuras[@]}"
