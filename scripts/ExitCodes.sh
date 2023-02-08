#!/bin/bash

# Código de saída 0 - 255
# 0 = Sucesso
# n > 0 = Erro

ls /temp/teste

ERRO=$?

echo "Erro: $ERRO"