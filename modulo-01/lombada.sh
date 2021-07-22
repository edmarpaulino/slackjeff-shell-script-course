#! /usr/bin/env bash

# Cirando um programa estilo lombada eletronica
# Limite de velocidade 80km/h
# Margem de 5km/h, ou seja 85km/h
# Entre 80km/h e 85km/h, exibe uma mensagem
# Passou de 85km/h, multa.

read -p 'Digite a sua velocidade: ' velocidade

[[ "$velocidade" -ge '80' ]] \
&& [[ "$velocidade" -le '85' ]] \
&& echo 'Você está no limite, cuidado!'

[[ "$velocidade" -ge '86' ]] \
&& echo 'Acima do limite permitido, você foi multado!'
