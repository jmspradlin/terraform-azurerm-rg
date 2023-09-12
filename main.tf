variable "rg" {}
variable "env" {}
resource "azurerm_resource_group" "rg01" {
  name     = "${var.env}-${var.rg.name}-01"
  location = var.rg.location
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