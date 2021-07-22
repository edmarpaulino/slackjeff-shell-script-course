#! /usr/bin/env bash

# TESTES INICIAIS DO PROGRAMA

# verificando se o kate existe no sistema.
[[ $(type -p kate) ]] || { echo 'Necessita do leafpad para executar esse programa.'; exit 1; }

# verificando se o usuário está logado como root para executar o programa
[[ "$UID" -ne '0' ]] && { echo 'Necessita de root para executar o programa'; exit 1; }
