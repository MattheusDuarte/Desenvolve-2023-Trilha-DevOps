#!/bin/bash

echo "Bem Vindo !!!"

meuIp=$( curl ifconfig.me/ip )
echo ">>>>>>>>>>>>>>>>>>Meu ip é: $meuIp<<<<<<<<<<<<<<<<<<<<<<<<<<<"
while true;
do
    ping -c1 $meuIp
    if [ $? -eq 0 ]
    then
        echo "Ip deu certo !!!"
        exit 0
    else
        echo "Ip Falhou !!!"
    fi 
done
