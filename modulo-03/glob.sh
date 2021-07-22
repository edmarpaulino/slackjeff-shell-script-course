#! /usr/bin/env bash

# Glob/Curingas em Shell.
# LEMBRANDO que em SHELL NÃO existe
# EXPRESSÃO REGULAR (ER), existem apenas em utilitários
# o que estamos vendo são GLOB/CURINGAS

# Qualquer coisa.
# para isto utilizamos o glob *
echo '*.txt' # arq.txt, edmar.txt, qualquer_coisa.txt
echo 'google-chr*' # google-chrome ou google-chrume

# Um caractere qualquer...
# É utilizado o ? para indicar.
echo '?ato.txt' # rato.txt, gato.txt, tato.txt, pato.txt

# Lista negada
# Qualquer caractere menos os listados.
echo '[^A-Za-z]*.png' # NEGANDO	de A-Z e de a-z.

# Lista com ou, qualquer um dos textos
# separados por ','.
echo '{A-Z,a-z,0-9}*.${jpg,bmp,png,html,txt}'
# 'ABACATE, abacate, 12, 01' 'QUALQUER COISA' '.' 'jpg ou bmp ou png'...
echo '[^A-Za-z]{-,_}[^0-9]*{1,2}.{bmp,png}'
#	123-edmar-1.bmp
#	36-abc@@2.png
