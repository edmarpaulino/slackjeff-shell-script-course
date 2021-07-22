#! /usr/bin/env bash

# Redireciona sobrescrevendo
# >
# 2>

# Redireciona em anexo
# >>
# 2>>

arquivo_log='/tmp/log.txt'

# Alimentando o comando cat com o HERE DOCUMENT e
# redirecionando a saída do cat para o arquivo manual.txt

# Primeira forma e que deve ser usada
cat >>'manual.txt' <<EOF
Aqui é o manual de ajuda...
Faça isso e faça aquilo que vai dar tudo certo!
\$HOME
EOF

# Segunda forma
cat <<EOF >>'manual.txt'   
Aqui é o manual de ajuda da segunda forma...
Faça isso e faça aquilo que vai dar tudo certo!
\$HOME
EOF

# Com tab para não precisar ficar colado ao inicio da linha
	cat <<-EOF >>'manual.txt'   
	Aqui é o manual de ajuda da segunda forma e com tab...
	Faça isso e faça aquilo que vai dar tudo certo!
	\$HOME
	EOF

#=======TESTE======
[[ ! -e "$arquivo_log" ]] && > "$arquivo_log"

# Passando diretorio que NÃO existe
# para o comando ls, e enviando a saída
# de erro para o arquivo de log.
if ls /homeeee >/dev/null 2>"$arquivo_log"; then
	echo 'O comando LS funcionou.'
else
	echo "|==============$(date +%H:%M)================|" >> "$arquivo_log"
	echo "Opa houve um erro, verifique em: $arquivo_log" 
fi

if ! ls /homeee >&- 2>&-; then
	echo "Opsss deu algum erro..."
fi
