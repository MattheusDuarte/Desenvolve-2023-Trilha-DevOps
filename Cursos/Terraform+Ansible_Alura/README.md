# Preparing Environment
Instalação disponível para usuários **Ubuntu**

### **Terraform**

Instalação do Terraform

``` Shell
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform
```

### **Python**

Instalação do Python

``` Shell
sudo apt install python3
```

### **Ansible**

Instalação do Ansible

``` Shell
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt-get install ansible
```

### **AWS CLI**

Instalação da AWS CLI

Utilize esse link para fazer a intalação [AWS_CLI](https://docs.aws.amazon.com/pt_br/cli/latest/userguide/getting-started-install.html)


# How to uses

``` Shell
#inciando 
terraform init

#planejando
terraform plan

#subindo infra
terraform apply

#Tarefas com ansible
ansible-playbook [playbook] -u [usuario] --private-key [chave] -i [arquivo_de_hosts]

#Dentro da instância rodar os comando
$ . venv/bin/activate
$ python3 manage.py runserver 0.0.0.0:8000
```
# Connect to Instance

``` shell
ssh -i [key]  ubuntu@[public DNS]
```