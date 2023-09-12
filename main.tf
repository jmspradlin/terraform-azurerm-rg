variable "rg" {}
variable "env" {}
resource "azurerm_resource_group" "rg01" {
  name     = "${var.env}-${var.rg.name}-01"
  location = var.rg.location
}