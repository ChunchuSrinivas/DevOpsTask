variable location {
  type        = string
  default     = "centralindia"
  description = "location is central india"
}

variable resourcegroup {
  type        = string
  default     = "DevOpsTask"
  description = "rg name is DevOpsTaskRg"
}

variable storageaccountname {
  type        = string
  default     = "devopstrg"
  description = "DevOps Task Storage Account"
}

variable containername {
  type        = string
  default     = "devopsblb"
  description = "DevOps task blob storage container for terraform backend"
}

variable containerregistry {
  type        = string
  default     = "devopscntnr"
  description = "this is devops task acr for storing images"
}

variable akscluster {
  type        = string
  default     = "devopsclstr"
  description = "this is devops task aks cluster"
}

variable aksnode {
  type        = string
  default     = "devopsnode1"
  description = "this devopstask aks node"
}
