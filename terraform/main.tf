provider "azurerm" {
  version = "4.37.0"
  # The "feature" block is required for AzureRM provider 2.x. 
  features {}
}

output "local_location" {
value = local.location
}

output "variable_location" {
value = var.location
}

resource "azurerm_resource_group" "rg" {
  name     = "${var.resource-group-name}-${var.environment}"
  #location = local.config.variables["location"]  //this works
  location = local.location //this works
 
  
  tags = {
    environment = var.environment
  }
}
