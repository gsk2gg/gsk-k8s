# Terraform

## Terraform LifeCycle
### https://developer.hashicorp.com/terraform/tutorials/gcp-get-started/infrastructure-as-code
- `Scope` - Identify the infrastructure for your project.

- `Author` - Write the configuration for your infrastructure.

- `Initialize` - Install the plugins Terraform needs to manage the infrastructure.

- `Plan` - Preview the changes Terraform will make to match your configuration.

- `Apply` - Make the planned changes.


## Example Commands:
- terraform init
- terraform apply
- terraform fmt
- terraform validate
- terraform show
- terraform taint
- terraform destroy



## Terraform Service Account
https://developer.hashicorp.com/terraform/tutorials/gcp-get-started/google-cloud-platform-build
Select the project you created in the previous step.
Click "Create Service Account".
Give it any name you like and click "Create".
For the Role, choose "Project -> Editor", then click "Continue".
Skip granting additional users access, and click "Done".
After you create your service account, download your service account key.

Select your service account from the list.
Select the "Keys" tab.
In the drop down menu, select "Create new key".
Leave the "Key Type" as JSON.
Click "Create" to create the key and save the key file to your system.