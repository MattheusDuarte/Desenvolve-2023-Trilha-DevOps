# Desafio 1
## Brincando com Ansible
### Atividades
1. Com o ansible subir uma instância EC2
    1. Configurar a VPC
    2. Liberar a porta do SSH e HTTP
2. Instalar  e configurar o NGINX
    1. Instalar;
    2. Start do Serviço;
    3. Criação de um HTML que exiba o IP + Hostmane utilizando o template .j2;
    4. Restart do serviço.

## Comandos

1. Criação da instância:

    `ansible-playbook playbooks/create_ec2.yml`

2. Criação e teste do inventário dinâmico:

    `ansible-inventory -i inventory/aws_ec2.yml`

    `ansible -m ping -i inventory/aws_ec2`

3. Execução do playbook:

    `ansible-playbook playbooks/install_nginx.yml -i inventory/aws_ec2.yml`