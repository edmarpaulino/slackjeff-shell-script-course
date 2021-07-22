#! /usr/bin/env bash


#===============VARS=================|
nome='debugger'
versao='1.2-Beta'
dir_home="/home/${USER}/"
#======CONFIGURAÇÕES DO USUÁRIO======|
DEBUG='1' # 0 DESLIGADO / 1 LIGADO
#====================================|
#============CORES===================|
vermelho="\033[31;1m"
fecha_cor="\033[m"
#===========FUNÇÕES==================|

function debug_ativado(){
	if [[ "$DEBUG" -eq '1' ]]; then
		echo -e "${vermelho}+++++++++++++++++DEBUG ATIVADO++++++++++++++++++++"
		set -x
	fi
}

function debug_desativado(){
	if [[ "$DEBUG" -eq '1' ]]; then
		echo -e "+++++++++++++++++DEBUG DESLIGADO++++++++++++++++++++${fecha_cor}"
		set +x
	fi
}
#====================================|

debug_ativado # chamado de função
echo 'Oi tudo bem?'
for i in 1 2 3 4 5; do echo "${i}"; done

debug_desativado # chamado de função
for i in 1 2 22222222; do echo "${i}"; done
