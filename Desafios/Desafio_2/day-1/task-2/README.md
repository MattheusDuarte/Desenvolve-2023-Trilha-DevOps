# Linux e Bash

Desenvolva um script em bash no linux que faca, dentro do mesmo codigo:

- A primeira informacao na tela, ao executar o script, deve ser a frase: Bem vindo!
- Busca a informacao do site http://ifconfig.me  e mostre essa informacao na tela
- Use o comando "ping" para verificar se o endereco de ip retornado acima responde a este protocolo

## Instruções e comandos
Foi criado um script que verifica o ip, executa o comando ping e verifica a saida do comando, caso tenha tido falha ou não ele informa.

Para rodar o comando precisamos de da permissão de execução ao arquivo e executarmos:
```bash
#concede permissão ao script
chmod +x meuscript.sh

#executa o script
./meuscript.sh
```