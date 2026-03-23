terraform {
  required_providers {
    iosxe = {
      source  = "CiscoDevNet/iosxe"
      version = "~> 0.5.1" 
    }
  }
}
provider "iosxe" {
  username = "admin"
  password = "admin"
  devices  = var.routers
}
terraform {
    backend "http" {
  }

