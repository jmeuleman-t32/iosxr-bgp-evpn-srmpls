# providers.tf

terraform {
  required_providers {
    iosxr = {
      source  = "ciscodevnet/iosxr"
      version = "0.7.1"
    }
  }
}