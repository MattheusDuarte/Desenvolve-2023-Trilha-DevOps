#!/bin/bash

conversao_imagem(){
cd ~/Documentos/Alura/Semana-12/imagens-livros

if [ ! -d png ]
then
    mkdir png
fi

for image in *.jpg
do
   local imagem_sem_extensao=$(ls $image | awk -F. '{print $1}')
    convert $imagem_sem_extensao.jpg png/$imagem_sem_extensao.png
done
}

conversao_imagem 2 > logs_erro_conversao.txt

if [ $? -eq 0  ]
then
    echo 'Conversão realizada com sucesso'
else
    echo 'conversão falhou'
fi
