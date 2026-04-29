terraform {
  required_providers {
    iosxr = {
      source  = "CiscoDevNet/iosxr"
      version = "~> 0.7"
    }
  }
}

provider "iosxr" {
  host     = var.host
  username = var.username
  password = var.password
  port     = 57400
  insecure = true
}