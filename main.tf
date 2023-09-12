variable "rg_name" {}
variable "env" {}
variable "rg_location" {}
resource "azurerm_resource_group" "rg01" {
  name     = "${var.env}-${var.rg_name}-01"
  location = var.rg_location
}

terraform {
  required_version = ">= 1.3"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0, < 4.0"
    }
  }
}