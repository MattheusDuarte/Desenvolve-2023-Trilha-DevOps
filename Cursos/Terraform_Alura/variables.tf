
variable "name" {
  description = "name of the application"
  default     = "dev"
}

variable "region" {
  description = "define what region the instance will be deployed"
  default     = "us-east-1"
}

variable "ami" {
  description = "AWS AMI to be used"
  default     = "ami-007855ac798b5175e"
}

variable "instance_type" {
  description = "AWS instance type defines the hardware configuration of the machine"
  default     = "t2.micro"
}

variable "key" {
  description = "key used to connect to the instance"
  default     = "terraform-aws"
}

variable "Local_IP" {
  description = "IP Local"
  default     = "seu IP"
}
