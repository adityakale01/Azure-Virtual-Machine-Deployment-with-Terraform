# Terraform Azure VM

This project demonstrates how to provision a **Virtual Machine on Microsoft Azure using Terraform**. The project is designed to provide hands-on experience with **Infrastructure as Code (IaC)** and the process of automating Azure infrastructure instead of creating resources manually through the Azure Portal.

## 🚀 Project Overview

The infrastructure is created using Terraform's declarative configuration approach. Terraform defines the desired state of the Azure environment and automatically creates the required resources.

The project provisions the following Azure resources:

* **Resource Group**
* **Virtual Network (VNet)**
* **Subnet**
* **Network Security Group (NSG)**
* **Public IP Address**
* **Network Interface (NIC)**
* **Azure Virtual Machine**

The Network Security Group is used to control inbound network traffic to the virtual machine, while the Virtual Network and Subnet provide the required network environment.

## 🛠️ Technologies Used

* **Terraform**
* **Microsoft Azure**
* **Azure CLI**
* **HCL (HashiCorp Configuration Language)**

## 📂 Project Structure

```text
terraform-azure-vm/
│
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
└── README.md
```

## ⚙️ Prerequisites

Before running this project, make sure you have:

1. An active Azure subscription
2. Terraform installed
3. Azure CLI installed
4. An authenticated Azure account

Login to Azure using:

```bash
az login
```

Verify your subscription:

```bash
az account show
```

## ▶️ Deployment

Initialize the Terraform working directory:

```bash
terraform init
```

Review the infrastructure Terraform will create:

```bash
terraform plan
```

Deploy the infrastructure:

```bash
terraform apply
```

Type `yes` when prompted.

After deployment, Terraform outputs can be used to retrieve information such as the VM's public IP address.

## 🧹 Destroy Infrastructure

To avoid unnecessary Azure charges, destroy the resources when they are no longer required:

```bash
terraform destroy
```

Type `yes` when prompted.

## 🎯 Learning Objectives

Through this project, I am learning how to:

* Use Terraform to provision cloud infrastructure
* Work with Azure resources using Terraform
* Understand Azure networking fundamentals
* Configure Network Security Groups
* Use Terraform variables and outputs
* Follow the Terraform workflow: `init → plan → apply → destroy`
* Practice Infrastructure as Code
* Automate cloud infrastructure deployment

## 🔐 Security Note

Do not commit sensitive information such as Azure credentials, passwords, private keys, or secrets to the repository.

If using `terraform.tfvars` for sensitive values, consider adding it to `.gitignore`.

## 📌 Future Improvements

Possible improvements include:

* Using Terraform modules
* Adding Azure Storage for remote Terraform state
* Implementing Azure Key Vault
* Adding cloud-init configuration
* Introducing Terraform workspaces
* Automating deployment using GitHub Actions
* Adding monitoring and logging with Azure Monitor

---

**Built as a hands-on project to strengthen my Terraform, Azure, and DevOps skills.**

