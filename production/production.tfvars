rg_name = "WTC_SOL1"
#log Analytics
log_analytics_workspace_name = "aksadvancedla"
location                     = "eastus"

# Virtual Network
vnet_name                   = "aksadvanced-vnet"
network_address_space       = "192.168.0.0/16"
aks_subnet_address_prefix   = "192.168.0.0/24"
aks_subnet_address_name     = "aks"
appgw_subnet_address_prefix = "192.168.1.0/24"
appgw_subnet_address_name   = "appgw"

# AKS
aks_name           = "aksadvancedcluster"
kubernetes_version = "1.26.0"
agent_count        = 3
vm_size            = "Standard_DS2_v2"
ssh_public_key     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCZPpA2ST1jWumb7u12LrjLQ6dbRdGL4iH1LXycPKWa2f4/92Ipzpr4iea9bWbZKDfPH3owGoLaAn+oW1dPmPLzY9/PU2qcjB0YguTWb4BuPbvRNQnN6ZAZnazES9zn12+fDQu4z0LWN4rV7kRuCMoyi2HjITLzjL+Bsjz9m4v/qmfs8isTAmB8PdlMRggmQ8d8QPxvnloGAh2AV2PUoQ8TFV8+IsIlB83HstPuKcAj6/E3mcNZOXlF4YNimg0hgEZsBrDoZSBn2zNotRAaYIZ+p0O/1HNqv6lOW8Ff73LH6Pchv0Xe8YqMYV7H6mSuCVtySauw+5DlzAXerv9oU+tbGsx1po9mkLdzdPFGAshi4yO9H4xxYWSKJDMWFUzgcpKuFaTlTGrsd4+QxmVkn/VS13YuVYeAnWN4aYSEUTunG6LzTapcvGUeWAZDxEPPWRRvZ4jhto+HjRjJDQBQqSDnG0Mb6fjvlz6AYTo03hDx29FwhkD5OwGPIUV7TTt5AFU= generated-by-azure"

# ACR
acr_name = "aksadvancedacr"
environment = "production"

aks_service_principal_app_id = "f57ebc8d-cdc1-4a1f-93a6-206ca7e84a92"
aks_service_principal_client_secret = "-dT8Q~xxKq46C4h3iuZ8Qi60mbzrrzwucQzyNdsi"

# App Insights
app_insights_name = "aksadvancedinsight"
application_type  = "web"

# Key vault
keyvault_name = "aksadvancedkv"
access_policy_id  = "f57ebc8d-cdc1-4a1f-93a6-206ca7e84a92"
