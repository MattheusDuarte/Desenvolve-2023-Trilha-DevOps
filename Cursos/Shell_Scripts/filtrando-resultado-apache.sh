#!/bin/bash

cd ~/Documentos/Alura/Semana-12/apache-log

regex="\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"

#os 2 colchetes ([]) envolve a comparação, e utilizamos (=~) para a coampração.
if [[ $1 =~ $regex ]]
then
    cat apache.log | grep $1
		if [ $? -ne 0 ]
    then
        echo "O endereco IP procurado nao esta presente no arquivo"
    fi
else
    echo "Formato não é válido"
fi
