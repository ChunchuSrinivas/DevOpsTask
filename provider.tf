terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.95.0"
    }
  }
}

provider "azurerm" {
        features {}
        subscription_id = "895f0410-bb29-4612-b064-a8705da764df"
        client_id       = "e8068d1c-93fc-4d2e-9793-7643559c13e1"
        client_secret   = "k7v8Q~cpcotjD4TIjAVebYUVGn_lSAIl62aJRctB"
        tenant_id       = "a866d2ce-a71b-47d8-8134-7e8aab72fa46"
}
