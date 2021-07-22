#! /usr/bin/env bash

# Comando if/then
# Checando se há conexão com a internet

if wget -q --spider www.google.com; then
    echo 'Tem internet'
fi
