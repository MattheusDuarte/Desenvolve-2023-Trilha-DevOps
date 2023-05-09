resource "aws_instance" "dev" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key
  vpc_security_group_ids = [aws_security_group.acesso_ssh.id]

  # user_data = <<-EOF
  #   #!bin/bash
  #   sudo apt update
  #   cd /home/ubuntu
  #   echo "<h1> Feito com o Terraform</h1>" > index.html
  #   nohup busybox httpd -f -p 80 & 
  # EOF

  tags = {
    Name = "${var.name}"
  }
}