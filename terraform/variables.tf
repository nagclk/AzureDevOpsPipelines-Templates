variable "environment" {
  default = "development"
  description = "The Environment name, i.e dev, staging, qa, preprod, test, prod..."
}

variable "resource-group-name" {
  default = "resourcegroup"
  description = "The Resource Group name to be deployed"
}

variable "location" {
  default = "westeurope"
  description = "Azure region"
}

locals {
  config  = yamldecode(file("../azure-pipelines.yml"))
}
  output "location" {
      value = local.config.variables["location"]
    }
