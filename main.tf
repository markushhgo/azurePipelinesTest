
terraform {
    backend "azurerm" {
    resource_group_name  = "rgMarkusHallforsPilviakatemia2020"
    storage_account_name = "markushvmpilviakatemia"
    container_name       = "terraformgithub"
    key                  = ""
    }
}

resource "azurerm_virtual_network" "vnet" {
    name                = "mytfnet"
    address_space       = ["10.0.0.0/16"]
    location            = "uksouth"
    resource_group_name = "rgMarkusHallforsPilviakatemia2020"
}