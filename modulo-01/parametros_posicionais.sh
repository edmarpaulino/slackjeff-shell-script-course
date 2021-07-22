#! /usr/bin/env bash

echo "O nome do programa é \$0: $0"
echo "O primeiro \$1 parâmetro passado foi: ${1}"
echo "O segundo \$2 parâmetro passado foi: $2"
echo "O terceiro \$3 parâmetro passado foi: $3"
echo "O quarto \$4 parâmetro passado foi: $4"
echo "O oitavo \$8 parâmetro passado foi: $8"
echo "O décimo quarto \$14 parâmetro foi: ${14}"
echo "O décimo sexto \$16 parâmetro foi: ${16}"

echo "O número total de parâmetros passados foram: $#"
IFS=:
echo "Todos os parâmetros com \$*: $*"
echo "Todos os parâmetros com \$@: $@"

# Exemplo das variáveis $* e $@
# $* "a b c d e"
# $@ "a" "b" "c" "d" "e"

echo "Número do PID do processo ATUAL ou DO PRÓPRIO PROGRAMA: $$"
echo "Número do PID do último job em segundo plano: $!"
echo "Último argumento do último comando executado: $_"
echo "Mosta o código de retorno do último comando executado: $?"
