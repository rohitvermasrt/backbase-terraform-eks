# backbase-terraform-eks
Terraform templates for provisioning EKS cluster

# Getting Started with EKS

## Amazon CLI

You will need AWS CLI to configure AWS Secret Key and Access token to be able to run terraform templates to provision resource of AWS.

$ aws configure
## Terraform

### Install terraform to be able to run the terraform templates.

### Initialize the project, which downloads a plugin that allows Terraform to interact with Docker
$ terraform init

### Create Terraform execution plan which determines what actions are necessary to achieve the desired state specified in the configuration file.

$ terraform plan

### Provision the EKS cluster with 'apply'. When Terraform asks you to confirm type 'yes' and press 'ENTER'.

$ terraform apply

![Terraform apply response](https://github.com/rohitvermasrt/backbase-terraform-eks/blob/main/images/tf_apply_response.png?raw=true)

### Verify the provisioning of EKS by login into AWS web console.

![AWS EKS](https://github.com/rohitvermasrt/backbase-terraform-eks/blob/main/images/eks_cluster.png?raw=true)