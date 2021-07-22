#! /usr/bin/env bash

# Trabalhando com loop while
# While: Enquando status de saída for 0 faça...

# LOOP INFINITO
#while [[ '1' = '1' ]]; do
#	echo 'Olha só, estou infinito!'
#	echo 'Aperte Ctrl+C para parar'
#	sleep 1s
#done

val='1'
while [[ "$val" -le '5' ]]; do
	echo "O valor é: $val"
	val=$(( $val + 1 ))
done
