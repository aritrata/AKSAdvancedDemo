variable log_analytics_workspace_name {
}

# refer https://azure.microsoft.com/pricing/details/monitor/ for log analytics pricing 
variable log_analytics_workspace_sku {
}

variable "rg_name" {
  default = "WTC_SOL1"
}


variable "location" {
  default = "eastus"
}

variable "environment" {
}