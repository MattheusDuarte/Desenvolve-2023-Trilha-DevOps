#!/bin/bash

cd ~

if [ ! -d  backup ]
then
    mkdir backup
fi

mysqldump -u root $1 > ~/bacukp/$1.sql

if [ $? -eq 0 ]
then
    echo 'Backup realizado com sucesso'
else
    echo 'Houve um problema no backup'
fi

