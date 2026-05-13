terraform {
  required_version = ">= 1.7.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.1"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-tfstate-prod"
    storage_account_name = "sttfstateprod"
    container_name       = "tfstate"
    key                  = "landingzone.tfstate"
  }
}

provider "azurerm" {
  features {}
  use_oidc = true
}
