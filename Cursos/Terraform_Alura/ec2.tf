resource "aws_instance" "dev" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key
  vpc_security_group_ids = [aws_security_group.acesso_ssh.id]
  count                  = 3
  tags = {
    Name = "${var.name}-${count.index}"
  }
}