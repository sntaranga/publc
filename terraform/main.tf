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

resource "iosxe_interface_loopback" "management_loopback" {
  for_each = { for router in var.routers : roiuter.name => router }
  description                = "Management Loopback" 
  ipv4_address               = "1.1.1.1" 
  ipv4_address_mask          = "255.255.255.255" 
  name                       = 1
}
