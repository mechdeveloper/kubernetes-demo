terraform {
  required_version = ">=1.3.0"

  cloud {
    organization = "learn-azure-dev"
    workspaces {
      name = "kubernetes-demo"
    }
  }

  required_providers {

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.30.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~>4.0"
    }

  }
}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}


