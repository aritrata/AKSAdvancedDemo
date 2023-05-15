variable "log_analytics_workspace_name" {
  type        = string
  description = "Log Analytics Workspace Name"
}

variable "location" {
  type        = string
  description = "Location of Resources"
}

variable "rg_name" {
  type        = string
  description = "Resource Group Name"
  default = "WTC_SOL1"
}

variable "vnet_name" {
  type        = string
  description = "Virtual Network Name"
}

variable "network_address_space" {
  type        = string
  description = "Virtual Network Address Space"
}


variable "aks_subnet_address_prefix" {
  type        = string
  description = "AKS Subnet Address Prefix"
}

variable "aks_subnet_address_name" {
  type        = string
  description = "AKS Subnet Name"
}

variable "appgw_subnet_address_prefix" {
  type        = string
  description = "AppGW Subnet Address Prefix"
}

variable "appgw_subnet_address_name" {
  type        = string
  description = "AppGW Subnet Name"
}

variable "aks_name" {
  type        = string
  description = "AKS Name"
}

variable "kubernetes_version" {
  type        = string
  description = "AKS K8s Version"
}

variable "agent_count" {
  type        = string
  description = "AKS Agent Count"
}

variable "vm_size" {
  type        = string
  description = "AKS VM Size"
}

variable "acr_name" {
  type        = string
  description = "ACR Name"
}

variable "environment" {
  type        = string
  description = "Environment"
}

variable "ssh_public_key" {
  type        = string
  description = "SSH key for AKS Cluster"
}

# The following two variable declarations are placeholder references.
# Set the values for these variable in terraform.tfvars
variable "aks_service_principal_app_id" {
  default = "f57ebc8d-cdc1-4a1f-93a6-206ca7e84a92"
}

variable "aks_service_principal_client_secret" {
  default = "-dT8Q~xxKq46C4h3iuZ8Qi60mbzrrzwucQzyNdsi"
}

variable "app_insights_name" {
  type = string
  description = "Application Insights Name"
}

variable "application_type" {
  type = string
  description = "Application Insights Type"
}
/*
variable "keyvault_name" {
  type = string
  description = "Key Vault Name"
}

variable "access_policy_id" {
  type = string
  description = "Object ID for Key Vault Policy"
}*/


variable "sql_server_name" {
  description = "The name of the Azure SQL Server to be     created or to have the database on - needs to be unique,     lowercase between 3 and 24 characters including the prefix"
}

variable "sql_server_admin_user" {
  description = "The name of the Azure SQL Server Admin user     for the Azure SQL Database"
}

variable "sql_server_admin_password" {
  description = "The Azure SQL Database users password"
}

variable "sql_database_name" {
  description = "The name of the Azure SQL database on - needs     to be unique, lowercase between 3 and 24 characters     including the prefix"
  default     = "mhcdb"
}