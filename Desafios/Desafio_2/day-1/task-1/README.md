# Brincando com docker

Instale na sua maquina o docker desktop, existem versoes para windows e linux.

Voce agora deve ter o comando **docker** funcionando no seu computador.

Faca alguns testes:

- docker version
- docker pull nginx:latest
- docker run -it nginx:latest bash 

## Exercicio

Agora gere uma imagem localmente no seu computador e inicie o container.

Deixe o container rodando e acesse o website no seu computador.

Modifique a pagina do container e gere novas imagens.

## Instruções
1. Criamos um Dockerfile com a imagem:
```bash
docker build -t server-nginx .
```
2. Com a imagem criada executamos o comando para ela executar em segundo plano e informamos qual porta ele irá escutar:
```bash
docker run - d -p 8080:80 server-nginx
```
