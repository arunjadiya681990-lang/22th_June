resource "azurerm_resource_group" "mysr1" {
    name = "arun_ghar"
    location = "west us"
}

resource "azurerm_storage_account" "myst1" {
    name = "myst1"
  resource_group_name = azurerm_resource_group.mysr1.name
  location = azurerm_resource_group.mysr1.location
  account_tier = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "mysocnta" {
    name = "myconat"
  storage_account_name = azurerm_storage_account.myst1.name
  container_access_type = "private"
}