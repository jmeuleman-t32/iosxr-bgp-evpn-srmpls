terraform {
  backend "local" {
    path = "/opt/terraform-statefile/iosxr-mpls/terraform.tfstate"
  }
}