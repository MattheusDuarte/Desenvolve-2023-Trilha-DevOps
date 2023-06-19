#!/bin/bash

converte_imagem(){
    local caminho_imagem=$1   
    local imagem_sem_extensao=$( ls $caminho_imagem | awk -F. '{ print $1 }')
    convert $imagem_sem_extensao.jpg $imagem_sem_extensao.png

}


varrer_diretorio(){

    cd $1 #entrando no conteúdo da variável arquivo      

    for arquivo in *
    do
        local caminho_arquivo=$( find ~/Documentos/Alura/Semana-12/imagens-novos-livros -name $arquivo)
        #condição para saber se é arquivo ou diretório
        if [ -d $caminho_arquivo ]
        then
            varrer_diretorio $caminho_arquivo  
        else
            converte_imagem $caminho_arquivo
        fi
    done

}


varrer_diretorio ~/Documentos/Alura/Semana-12/imagens-novos-livros

if [ $? -eq 0 ]
then 
    echo 'conversao sucesso'
else 
   echo 'problema conversão'
fi 
