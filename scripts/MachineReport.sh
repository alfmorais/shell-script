#!/bin/bash

MACHINE_NAME=$(uname -s)
HOSTNAME=$(hostname)
DATE=$(date)
MACHINE_INITIAL_DATE=$(uptime -s)
KERNEL_VERSION=$(uname -r)
CORE_QUANTITY=$(cat /proc/cpuinfo |grep "model name"|wc -l)
CPU_MODEL=$(cat /proc/cpuinfo |grep "model name"|head -n1|cut -c14-)
MEMORY=$(expr $(cat /proc/meminfo |grep MemTotal|tr -d ' ' |cut -d: -f2|tr -d kB) / 1024)
DF=$(df -h|egrep -v '(tmpfs|udev)')

echo "========================================================"
echo "Relatório da Máquina: $MACHINE_NAME/$HOSTNAME"
echo "data/hora: $DATE"
echo "========================================================"
echo ""
echo "Máquina Ativa desde: $MACHINE_INITIAL_DATE"
echo ""
echo "Versão do Kernel: $KERNEL_VERSION"
echo ""
echo "CPUs: "
echo "Quantidade de CPUs/Core: $CORE_QUANTITY"
echo "Modelo da CPU: $CPU_MODEL"
echo ""
echo "Memória Total: $MEMORY MB"
echo ""
echo "Partições: "
echo "$DF"
echo ""
echo "========================================================"