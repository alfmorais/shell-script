#!/bin/bash


read -p "Digite um nome para buscar no arquivo: " FIRST_NAME
echo ""

FILE_PATH="/home/alfmorais/Cursos/shell-script/example.txt"
FULL_NAME=$(grep "$FIRST_NAME" $FILE_PATH)

echo "Achei o nome completo do aluno: $FULL_NAME"
echo ""
