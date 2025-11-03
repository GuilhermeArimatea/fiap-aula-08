variable "project_name" {
  default = "raj-fiap-terraform-aula-08"
}

variable "aws_region" {
  default = "sa-east-1"
}

variable "cidr_vpc" {
  default = "10.0.0.0/16"
}

variable "tags" {
  default = {
    Name        = "raj-fiap-terraform-aula",
    School      = "FIAP",
    Environment = "Development"
  }
}

variable "instante_type" {
  default = "t3.micro"
}
