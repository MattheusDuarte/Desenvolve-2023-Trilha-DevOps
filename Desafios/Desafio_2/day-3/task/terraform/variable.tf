variable "ami" {
  description = "AWS AMI to be used"
  default     = "ami-007855ac798b5175e"
}

variable "instance_type" {
  description = "AWS instance type defines the hardware configuration of the machine"
  default     = "t2.micro"
  #mudar para tg4.micro
}

variable "key" {
  description = "key used to connect to the instance"
  default     = "terraform-aws"
}

variable "Local_IP" {
  description = "IP Local"
  default     = "seu IP"
}
