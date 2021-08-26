terraform {
  backend "azurerm" {
    resource_group_name  = "Terraform-RG"
    storage_account_name = "terraformstatedemopoc"
    container_name       = "tfstatefilecontainer"
    key       = "tfstatefilecontainer.tfstate"
 }
}
data "azurerm_client_config" "current" {}
provider "azurerm" {
  version = "=2.0.0"
  features {}
}
resource "azurerm_resource_gorup" "terraform-demo" {
 name = "terraform-demo"
 location = "West Europe"
 }