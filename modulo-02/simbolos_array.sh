#! /usr/bin/env bash

# ! -> (EXCLAMAÇÃO) Faz verificação do índice
# # -> (HASHTAG) Exibe a quantidade de indices na array 

#animais=('Jacaré' 'Macaco' 'Cachorro' 'Cavalo' 'Gato')

#for lista in ${!animais[@]}; do
#	echo "Vetor $lista: ${animais[$lista]}"
#done

#echo "Indices TOTAIS da array 'animais': ${!animais[@]}"

animais=('Jacaré' 'Macaco' 'Cachorro' 'Cavalo' 'Gato')

echo "Quantidade de indices na array 'animais': ${#animais[@]}"

