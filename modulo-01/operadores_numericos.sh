#! /usr/bin/env bash

read -p 'Digite o primeiro número: ' num1
read -p 'Digite o segundo número: ' num2

# -lt less than
[[ "num1" -lt "num2" ]] \
&& echo "$num1 é menor que $num2" \
|| echo "$num1 não é menor que $num2"

# -le less equal
[[ "num1" -le "num2" ]] \
&& echo "$num1 é menor ou igual a $num2" \
|| echo "$num1 não é menor nem igual a $num2"

# -gt greater than
[[ "num1" -gt "num2" ]] \
&& echo "$num1 é maior que $num2" \
|| echo "$num1 não é maior que $num2"

# -ge greater equal
[[ "num1" -ge "num2" ]] \
&& echo "$num1 é maior ou igual a $num2" \
|| echo "$num1 não é maior ou igual a $num2"

# -eq equal
[[ "num1" -eq "num2" ]] \
&& echo "$num1 é igual a $num2" \
|| echo "$num1 não é igual a $num2"

# -ne not equal
[[ "num1" -ne "num2" ]] \
&& echo "$num1 não é igual a $num2" \
|| echo "$num1 é igual a $num2"
