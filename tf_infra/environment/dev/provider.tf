terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.12.0"
    }
  }
    backend "azurerm" {
    resource_group_name  = "AKS-RG1"  
    storage_account_name = "todoappstorageaccount12"                      
    container_name       = "todoapp"                      
    key                  = "dev.terraform.tfstate"       
  }
}

provider "azurerm" {
  features {}
  subscription_id = "d37b3ed6-ba40-48a8-8ffe-8e564707c5e2"
}