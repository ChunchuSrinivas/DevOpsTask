#Creating resource group
resource "azurerm_resource_group" "rg" {
    name     = var.resourcegroup
    location = var.location

  tags = {
    env = "dev"
  }
}

#creating storage account to store terraform statefile as backend
resource "azurerm_storage_account" "stacnt" {
  name                     = var.storageaccountname
  resource_group_name      = var.resourcegroup
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  	depends_on =[
    	    azurerm_resource_group.rg
  	]

  	tags = {
   	 env = "dev"
  	}
}

#creating container in storage account for terraform backend

resource "azurerm_storage_container" "blobs" {
  name                  = var.containername
  storage_account_name  = var.storageaccountname
  container_access_type = "private"
 }

#creating azure container registry to store docker images
resource "azurerm_container_registry" "acr" {
  name                = var.containerregistry
  resource_group_name = var.resourcegroup
  location            = var.location
  sku                 = "Premium"
  admin_enabled       = false

	depends_on =[
   	  azurerm_resource_group.rg
 	]	

  	tags = {
    	 env = "dev"
  	}	
}

#creating aks cluster with 1 node
resource "azurerm_kubernetes_cluster" "cluster" {
  name                = var.akscluster
  location            = var.location
  resource_group_name = var.resourcegroup
  dns_prefix          = "devopseaks1"

  identity {
    type = "SystemAssigned"
  }

  default_node_pool {
    name       = var.aksnode
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

	depends_on =[
    	  azurerm_resource_group.rg
  	]

   	tags = {
    	  env = "dev"
 	 }
}

output "client_certificate" {
  value     = azurerm_kubernetes_cluster.cluster.kube_config[0].client_certificate
  sensitive = true
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.cluster.kube_config_raw
  sensitive = true
}
