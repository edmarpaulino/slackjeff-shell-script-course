#! /usr/bin/env bash

# Checando se há conexão com a internet

echo 'Verificando conexão com a internet...'

# BLOCO if/then/else
if wget -q --spider https://www.google.com.br
then
    echo 'Tem internet'
else
    echo 'Não tem internet'
fi
