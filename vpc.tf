

resource "azurerm_virtual_network" "vn" {
  name                = "rg-network"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.0.0/16"]
  

  subnet {
    name             = "web"
    address_prefixes = ["10.0.1.0/24"]
    security_group   = azurerm_network_security_group.web_nsg.id
  }

  subnet {
    name             = "data"
    address_prefixes = ["10.0.2.0/24"]
    security_group   = azurerm_network_security_group.data_nsg.id
  }
}