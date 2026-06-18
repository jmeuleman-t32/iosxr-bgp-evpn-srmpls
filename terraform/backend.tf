terraform {
  backend "local" {
    path = "/opt/terraform-state/my-project/terraform.tfstate"
  }
}