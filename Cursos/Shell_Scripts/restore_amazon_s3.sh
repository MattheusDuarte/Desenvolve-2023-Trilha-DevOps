#!/bin/bash

CAMINHO_RESTORE=~/Documentos/Alura/Semana-12/restore_mutilidae_amazon

aws s3 sync s3://curso-shell-script/$(date +%F) $CAMINHO_RESTORE

cd $CAMINHO_RESTORE

if [ -f $1.sql ]
then
    mysql -u root mutilidae < $1.sql
    if [ $? -eq 0 ]
    then
       echo "O restore foi realizado com sucesso"
    fi 
else
    echo "Arquivo procurado não existe no dirétorio"
fi
