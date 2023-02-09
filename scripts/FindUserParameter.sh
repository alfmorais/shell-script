#!/bin/bash

NAME_TO_BE_SEARCH=$1
FILE_PATH="/home/alfmorais/Cursos/shell-script/example.txt"

RESULT=$(grep "$NAME_TO_BE_SEARCH" $FILE_PATH)

echo ""
echo "Resultado: $RESULT"
echo ""