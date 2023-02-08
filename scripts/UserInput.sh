#!/bin/bash

read -p "Olá qual é o seu nome? " NOME
echo ""

read -s -p "Digite sua senha: " PASSWORD
echo ""

echo "Olá $NOME"
echo ""

echo "Qual é sua idade, peso e estado civil?"
read AGE WEIGHT STATUS
echo "Sua idade $AGE"
echo "Seu peso $WEIGHT"
echo "Seu estado civil $STATUS"