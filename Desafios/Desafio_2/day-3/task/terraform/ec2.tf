resource "aws_instance" "dev" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key
  vpc_security_group_ids = [aws_security_group.rules_ssh_web.id]

  tags = {
    Aluno = "MatheusDuarte"
    Gb    = "desenvolve"
  }
  
  depends_on = [ aws_security_group.rules_ssh_web ]
}