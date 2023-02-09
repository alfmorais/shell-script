#!/bin/bash

read -p "Digite o primeiro número: " NUMBER_ONE
read -p "Digite o segundo número: " NUMBER_TWO

RESULT=$((NUMBER_ONE+NUMBER_TWO))

echo ""
echo "A soma dos dois números: $RESULT"
