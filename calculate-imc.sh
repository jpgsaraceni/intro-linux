#!/usr/bin/bash
read -p "Informe o seu peso: " peso 
read -p "Informe a sua altura: " altura
imc=`echo "scale=1; $peso/$altura^2" | bc`
echo "Seu IMC é: $imc"

# in terminal, run:
# ./calculate-imc.sh
