#! /usr/bin/env bash

#Conferindo se a variável é nula ou não

read -p 'Digite algo: ' algo

[[ -z "$algo" ]] && echo 'Sem conteúdo' || echo 'Com conteúdo'

# ou

[[ "$algo" ]] && echo 'Com conteúdo' || echo 'Sem conteúdo'
