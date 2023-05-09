# Pré-requisitos
configurar docker e kubernetes

# Projeto kubernentes
Desenvolver um projeto de portal de noticias utilizando o Kubernetes, junto com todos os seus serviços.
1. Criação de pods
   1. **portal-noticias.yml**
   2. **sistema-noticias.yml**
   3. **db-noticias.yml**
2. Criação de Serviços
   1. NodePort:
      1. **svc-portal-noticias.yml**
      2. **svc-sistema-noticias.yml**
   2. ClusterIP
      1. **svc-db-noticias.yml**
3. Criação de ConfigMap
   1. **db-configmap.yml**
   2. **sistema-configmap.yml**
   3. **portal-configmap.yml**
4. Criação de Deployment
   1. **portal-noticias-deployment.yml**
   2. **sistema-noticias-deployment.yml**
5. Peristindo dados
   1. **sistema-noticias-statefultset.yml**
6. PVC
   1. **imagens-pvc.yml**
   2. **sesão-pvc.yml**
7. HPA
   1. **portal-noticias-hpa.yml**
**senha e usuario para entrar no portal admin e admin**

## Executando
Para subir todo o projeto executamos os seguinte comando:
``` kubernetes
#Executar o Pod
kubectl apply -f ./portal-noticias.yml
kubectl apply -f sistema-noticias.yml
kubectl apply -f db-noticias.yml

#Executar o Serviço
kubectl apply -f ./svc-portal-noticias.yml
kubectl apply -f svc-sistema-noticias.yml
kubectl apply -f svc-db-noticias.yml

#Executar o configmap
kubectl apply -f db-configmap.yml
kubectl apply -f sistema-configmap.yml
kubectl apply -f portal-configmap.yml 

#deployment
kubectl apply -f portal-noticias-deployment.yml
kubectl apply -f sistema-noticias-deployment.yml
kubectl apply -f db-noticias-deployment.yml

#pvc
kubectl apply -f imagens-pvc.yml
kubectl apply -f sessao-pvc.yml

#statefulset
kubectl apply -f sistema-noticias-statefulset.yml

#HPA
kubectl apply -f portal-noticias-hpa.yml

#para habilitar o hpa no minikube
minikube addon enable metrics-server

#Visualizar em qual enredeço de IP esta executando
kubectl get nodes -o wide 

#Desfazer tudo
kubectl delete --all pods
kubectl delete --all services

#escrever as anotações
kubectl annotate deployment <nome do deployment> kubernetes.io/change-cause="criando portla de noticias na versão 1"

#vê revisões
kubectl rollout history deployment <nome do deployment>

#para retornar a alguma revisão especifica
kubectl rollout undo deployment <nome do deployment> --to-revision=<versão a ser retornada>

```
