#!/bin/bash

DATAHORA=$(date +%H:%M)
ARQUIVO="/home/alfmorais/Cursos/shell-script/example.txt"

clear

echo "=========== Variaveis ==========="
echo ""
echo "Exibir data e hora atual: $DATAHORA"
echo ""
echo "=================================="

echo ""
sort $ARQUIVO

DATAHORA=$(date +%H)

echo "=========== Variaveis ==========="
echo ""
echo "Nova hora atual: $DATAHORA"
echo ""
echo "=================================="