#!/bin/bash

#Tratando as memórias
memoria_total=$(free | grep -i mem | awk '{ print $2 }')
memoria_consumida=$(free | grep -i mem | awk '{ print $3 }')

#memória consumida
relacao_memoria_atual_total=$(bc <<< "scale=2;$memoria_consumida/$memoria_total *100" | awk -F. '{ print $1 }')

if [ $relacao_memoria_atual_total -gt 50 ]
then
    mail -s "Consumo de memoria acima do limiar" [email do adm]@gmail.com << del
    O consumo de mémoria esta acima do limite que foi especificado. atulamente o consumo é de $( free -h | grep -i mem | awk '{ print $3 }')
del

fi
