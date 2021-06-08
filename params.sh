!#/usr/bin/bash
top | grep $1

# O enunciado pedia para criar um shell script que recebesse um parâmetro do terminal,
# o que foi obtido utilizando $1.
# Se o usuário (com permissão de execução do arquivo) digitar, por exemplo, ./params.sh sys
# no terminal, serão exibidos os processos (comando top) que contenham a string sys (comando grep).
