#! /usr/bin/env bash

VARIAVEL_QUALQUER='Olá, tudo bem com você? tudo mesmo? Olha que eu acho que não é tudo não!'

# Retorna o tamanho da string
# o número de caracteres presentes.
echo "${#VARIAVEL_QUALQUER}"

# Corta o inicio da string, e somente o INICIO.
echo "${VARIAVEL_QUALQUER#Olá, tudo}"

# Retorna o texto á partir da posição
# desejada.
echo "${VARIAVEL_QUALQUER:7}"
# ou também da posição desejada até a posição
# desejada.
echo "${VARIAVEL_QUALQUER:7-10}"
# ou também quantos caracteres após a posição
# desejada.
echo '===================================='
echo "${VARIAVEL_QUALQUER:7:4}"

# Troca a primeira ocorrência da palavra desejada
# pela palavra escolhida
echo '===================================='
echo "${VARIAVEL_QUALQUER/Olá/Oi}"

# Troca todas as ocorrências da palavra desejada
# pela palavra escolhida
echo '===================================='
echo "${VARIAVEL_QUALQUER//tudo/nada}"

# Troca a primeira ocorrência SOMENTE se
# ela for a primeira string do texto
echo '===================================='
echo "${VARIAVEL_QUALQUER/#Olá/José}"
echo "${VARIAVEL_QUALQUER/#tudo/ruim}"

# Troca a ocorrência SOMENTE se
# ela for a última string do texto
echo '===================================='
echo "${VARIAVEL_QUALQUER/%não!/sim!}"
echo "${VARIAVEL_QUALQUER/%acho/penso}"

# Corta o final da string, SOMENTE o final 
echo '===================================='
echo "${VARIAVEL_QUALQUER%não!}"

# GULOSO, corta o texto do início da string.
echo '===================================='
echo "${VARIAVEL_QUALQUER##Olá,*você}"

# GULOSO, corta o texto do final da string.
echo '===================================='
echo "${VARIAVEL_QUALQUER%%acho*não!}"
