#!/bin/bash

USER=$(grep "$1" /etc/passwd)

if [ -n "$USER" ]
then
    echo "O usuário existe"
else
    echo "O usuário não existe"
fi
