

variable "name" {
}

variable "location" {
  default = "eastus"
}

variable "ssh_public_key" {
  default = "~/.ssh/id_rsa.pub"
}

variable "kubernetes_version" {
}

variable "agent_count" {
}

variable "vm_size" {
}

variable "dns_prefix" {
    default = "aksadvdns"
}

variable "rg_name" {
  default = "WTC_SOL1"
}


variable "kubernetes_cluster_rbac_enabled" {
  default = "true"
}

variable "addons" {
  description = "Defines which addons will be activated."
  type = object({
    oms_agent            = bool
    azure_policy         = bool
    ingress_application_gateway = bool
  })
}

variable log_analytics_workspace_id {
}

variable aks_subnet {
}

variable agic_subnet_id {
}

variable "environment" {
}

variable "aks_service_principal_app_id" {
  default = "f57ebc8d-cdc1-4a1f-93a6-206ca7e84a92"
}

variable "aks_service_principal_client_secret" {
  default = "-dT8Q~xxKq46C4h3iuZ8Qi60mbzrrzwucQzyNdsi"
}