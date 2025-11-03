# terraform {
#   backend "s3" {
#     bucket = "raj-fiap-terraform-aula-08"
#     key    = "fiap-aula-08/terraform.tfstate"
#     region = "sa-east-1"
#   }
# }

terraform {
  cloud {
    organization = "Rajs-Company"
    token        = "iWVFbYmD0AVHoQ.atlasv1.NNXBFtvm8nmyQRrjQybDymHbNzEFW3eFqXDCv009Gxt6uMmyUfAPMhkmZIuS1WXQ6D0"
    workspaces {
      name = "fiap-aula-08"
    }
  }
}
