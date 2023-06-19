#!/bin/bash

resposta_http=$(curl --write-out %{http_code} --silent --output /dev/null http://localhost)

if [ $resposta_http -ne 200 ]
then
    mail -s "Problema no servidor"  [email que vai receber]@gmail.com <<del
    houve um problema no servidor e os usuario paparam de ter acesso ao conteudo web
del 
systemctl restart nginx
fi
