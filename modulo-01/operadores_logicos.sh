#! /usr/bin/env bash

read -p 'Digite um número: ' num
test -z "$num"                      \
&& echo 'A variável é nula!'        \
|| echo 'A variável NÃO é nula!'

# && (AND) -> Só aceita Status de Saída 0
# || (OR) -> Só aceita Status de Saída diferentes de 0
