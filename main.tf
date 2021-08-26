provider "azurerm" {
  version = "=2.0.0"
  features {}
}
resource "azurerm_resource_gorup" "terraform-demo" {
 name = "terraform-demo"
 location = "West Europe"
 }