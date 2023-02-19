# a Terraform script that deploys an EC2 instance on AWS. with Amazon Linux 2 AMI, 
# with a t2.micro instance type and a default security group.

# Specify the provider and region
provider "aws" {
  region = "us-east-1"
}

# Create a new EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  tags = {
    Name = "Example"
  }
}

# Terraform: deploy a VM on Azure with UbuntuServer 18.04-LTS image, using the Standard_B1s VM size and a default network security group.

# Specify the provider and region
provider "azurerm" {
  features {}
}

# Create a new virtual machine
resource "azurerm_virtual_machine" "example" {
  name                  = "example-vm"
  location              = "eastus"
  resource_group_name   = "example-rg"
  network_interface_ids = [azurerm_network_interface.example.id]
  vm_size               = "Standard_B1s"

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  storage_os_disk {
    name              = "example-osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name  = "example-vm"
    admin_username = "adminuser"
    admin_password = "adminpassword"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }
}

# Create a network interface for the virtual machine
resource "azurerm_network_interface" "example" {
  name                = "example-nic"
  location            = "eastus"
  resource_group_name = "example-rg"

  ip_configuration {
    name                          = "example-ipconfig"
    subnet_id                     = azurerm_subnet.example.id
    private_ip_address_allocation = "Dynamic"
  }
}

# Create a subnet for the virtual network
resource "azurerm_subnet" "example" {
  name                 = "example-subnet"
  resource_group_name  = "example-rg"
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.2.0/24"]
}

# Create a virtual network for the virtual machine
resource "azurerm_virtual_network" "example" {
  name                = "example-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = "eastus"
  resource_group_name = "example-rg"
}

