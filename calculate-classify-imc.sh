#!/usr/bin/bash
read -p "Informe o seu PESO (em kg): " peso
read -p "Informe a sua ALTURA (em m, com . para casa decimal): " altura
imc=`echo "scale=1; $peso/$altura^2 | bc `
echo "Seu IMC é "$imc". Classificação:"
if [ `echo "$imc < 18.5" | bc` == 1];
then
  echo "Magreza"
elif [[ ( `echo "$imc >= 18.5" | bc` == 1 && `echo "$imc < 25" | bc` == 1 ) ]];
then
  echo "Saudável"
elif [[ ( `echo "$imc >= 25" | bc` == 1 && `echo "$imc < 30" | bc` == 1 ) ]];
then
  echo "Sobrepeso"
elif [[ ( `echo "$imc >= 30" | bc` == 1 && `echo "$imc < 35" | bc` == 1 ) ]];
then
  echo "Obesidade Grau I"
elif [[ ( `echo "$imc >= 35" | bc` == 1 && `echo "$imc < 40" | bc` == 1 ) ]];
then
  echo "Obesidade Grau II (severa)"
  echo "Obesidade Grau III (m[orbida)"
fi

# in terminal, run:
# ./calculate-classify-imc.sh
