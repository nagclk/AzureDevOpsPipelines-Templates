variable "environment" {
  default = "development"
  description = "The Environment name, i.e dev, staging, qa, preprod, test, prod..."
}

variable "resource-group-name" {
  default = "resourcegroup"
  description = "The Resource Group name to be deployed"
}

 /* variable "location" {
      default = "westeurope"
    } */

locals {
  config  = yamldecode(file("../azure-pipelines.yml"))
  location = "centralindia"
}

output "location" {
value = local.config.variables["location"]
}

