#! /usr/bin/env bash

#================================================#
# Fazendo várias operações com o comando test e  #
# seus operadores:                               #
# = (Confere se é igual)                         #
# != (Confere se NÃO é igual)                    #
# -n (Confere se String ou Variável NÃO é nula)  #
# -z (Confere se String ou Variável é nula)      #
# $? -> Status de Saída                          #
#================================================#
nome_conferir='Edmar'

#INICIANDO O PROGRAMINHA
read -p 'Qual é seu nome? ' nome
test -z "$nome"                         \
&& { echo 'A variável É nula!'; exit 1; }   \
|| echo 'A variável NÃO É nula!'

test "$nome" = "$nome_conferir"             \
&& echo "$nome é igual a $nome_conferir"    \
|| echo "$nome NÃO é igual a $nome_conferir"

#Resultados diferentes de 0 significa que algo deu errado
