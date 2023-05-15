# Introducing CI/CD to your pipeline

#The purpose of this lab is to introduce you to CI/CD. 

#In this lab, you will:
#- Begin CI/CD with Pipeline Trigger for automatic pipeline runs
#- Automated deployment of your AKS Application

RESOURCE_GROUP_NAME="WTC_SOL1"
STORAGE_ACCOUNT_NAME="aksadvancedstore"
Location="eastus"

# Create Resource Group
az group create -l $Location -n $RESOURCE_GROUP_NAME

# Create Storage Account
az storage account create -n $STORAGE_ACCOUNT_NAME -g $RESOURCE_GROUP_NAME -l $Location --sku Standard_LRS

# Create Storage Account blob
az storage container create  --name tfstate --account-name $STORAGE_ACCOUNT_NAME

AZURE_AD_GROUP_NAME="devopsjourney-aks-group"
CURRENT_USER_OBJECTID=$(az ad signed-in-user show --query id -o tsv)

# Create Azure AD Group
az ad group create --display-name $AZURE_AD_GROUP_NAME --mail-nickname $AZURE_AD_GROUP_NAME

# Add Current az login user to Azure AD Group
az ad group member add --group $AZURE_AD_GROUP_NAME --member-id $CURRENT_USER_OBJECTID

AZURE_GROUP_ID=$(az ad group show --group "devopsjourney-aks-group" --query id -o tsv)

echo "AZURE AD GROUP ID IS: $AZURE_GROUP_ID"

# Create SSHKey (copy Public Key in vars-->Production.tfvars)
az sshkey create --name "mySSHKey" --resource-group "WTC_SOL1"

# Get AKS Version
az aks get-versions --location eastus --output table

# Get Application Insight Instrumentation
az extension add --name application-insights 
az monitor app-insights component show --app WTC_SOL1 -g WTC_SOL1
az keyvault secret set --vault-name "aksadvancedkv-kv" --name "AIKEY" --value "92236fbd-510b-435c-bd7e-f1782140c741"
