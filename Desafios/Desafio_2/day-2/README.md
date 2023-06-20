# Construção do projeto
* Para a conclusão das tarefas instalamos o [minikube](https://minikube.sigs.k8s.io/docs/start/);
* Utilizamos o git actions para a montagem da imagem docker;
* O kubernetes para orquestrar os contêineres;
* E o HELM para gerenciar os pacotes kubernetes.
# Executando o projeto
Criamos os 3 arquivos de **deployment**, **service** e **hpa** e executamos utilizando o kubectl.
Afim de ampliar os conhecimentos utilizamos o helm para gerenciar a aplicação kubernetes.
``` shell
#Criamos um chart Helm chamado teste-aluno
helm create teste-aluno

#Examinamos se o chart esta bem formado
helm lint teste-aluno

#fazer o release da aplicação
helm install teste-aluno [local_aplicação]

#fazer alteração do helm
helm upgrade -f values.yaml teste-aluno .
helm upgrade -f [arquivo_values] teste-aluno [local_aplicação]

#para vê um historico dos comandos
helm history teste-aluno

#para voltar a versaõ anterior(rollback)
helm rollback [release] [revisao] [flag]
helm rollback teste-aluno 1

#desinstalar a release
helm uninstall teste-aluno

#Para listar qual URL o servio esta usando
minikube service list
```
# Link Estudo
[helm](https://helm.sh/docs/chart_template_guide/)

# Futuros estudos
Criar um ingress e expor a sua aplicação para ser acessivel no seu browser.
[nginx controller no minkube](https://kubernetes.io/docs/tasks/access-application-cluster/ingress-minikube/)
