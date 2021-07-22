#! /usr/bin/env bash

# Cera no carro

# Verificando se a sujeira saiu.
#while [[ "$sujeira" != 'sim' ]]; do
#	read -p 'A sujeira saiu? ' sujeira
#	sleep 1s
#done

while :; do
	read -p 'Sujeira saiu? [s/n] ' sujeira
	[[ "$sujeira" = 's' ]] && break || echo 'Beleza, esfrega mais um pouco...'
done

echo 'Opa, verifiquei que a sujeira saiu do carro, bom trabalho!'
