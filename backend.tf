terraform {
  backend "s3" {
    bucket = "raj-fiap-terraform-aula-08"
    key    = "fiap-aula-08/terraform.tfstate"
    region = "sa-east-1"
  }
}
