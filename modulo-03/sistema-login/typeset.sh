#! /usr/bin/env sh
# declarando arrys associativas em
# BASH, KSH e ZSH

# NÃO PORTAVEL, KSH NÃO FUNCIONA
# declare -A NOME_ARRAY
# NOME_ARRAY[idade]='25 anos'
# printf '%s\n' "${NOME_ARRAY[idade]}"

# FORMA MAIS PORTAVEL
typeset -A NOME_ARRAY
NOME_ARRAY[idade]='25 anos'
printf '%s\n' "${NOME_ARRAY[idade]}"
