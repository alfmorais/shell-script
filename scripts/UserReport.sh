#!/bin/bash

ls /home/$1 > /dev/null 2>&1 || { echo "Usuário Inexistente" ; exit 1 ; } 

NAME=$1
USERID=$(grep $NAME /etc/passwd|cut -d ":" -f3)
DESCRIPTION=$(grep $NAME /etc/passwd|cut -d ":" -f5 | tr -d ,)
USAGED_HOME=$(du -sh /home/$NAME|cut -f1)
LAST_LOGIN=$(lastlog -u $NAME)


echo "==============================================="
echo "Relatório do Usuário: $NAME"
echo ""
echo "UID: $USERID"
echo ""
echo "Nome ou Descrição: $DESCRIPTION"
echo ""
echo "Total Usado no /home/$NAME: $USAGED_HOME"
echo ""
echo "Ultimo Login: "
echo "$LAST_LOGIN"
echo ""
echo "==============================================="