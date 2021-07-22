#! /usr/bin/env bash

#====================================================#
# TRABALHANDO COM EXPANSÃO CONDICIONAL DE VARIÁVEIS! #
#====================================================#

# Se a variável NÃO estiver definida ou nula
# RETORNE com o que eu passar de argumento!  
# echo "${nome:-Edmar}"

# Se a variável NÃO estiver definida ou nula
# DEFINA/ARMAZENE o argumento/TEXTO que eu passar.
# echo "${nome:=Anderson}"

# read -p 'Deseja sair? [S/n]' escolha
# escolha=${escolha:=s}
# [[ "$escolha" = 's' ]] && echo 'Saiii'

# Se a variável NÃO estiver definida ou nula
# RETORNE com o seguinte ERRO:
# read -p 'Qual é o seu nome? ' nome
# echo "${nome:?Erro... Entrada nula, entre com algum dado\!}" # Precisa de caractere de escape

# Se a variável ESTIVER definida, retorne
# o argumento, SE NÃO deixe-a nula.
# nome='Edmar'
# echo "${nome:+Essa variável já possuí dados armazenados}"

read -p 'Qual é a sua cor favorita? ' cor_favorita
echo "${cor_favorita:+Que cor legal, combina com você!}" # Não precisa de caractere de escape
