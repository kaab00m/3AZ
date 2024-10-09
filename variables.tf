provider "aws" {
   region     = var.aws_region
#   access_key = ""
#   secret_key = ""
#   #profile = "TEST"  # Change this to your AWS CLI Profile
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}


#variable "region" {
#   description = "Region Name"
#   default     = "ap-southeast-1"
#}

variable "aws_region" {
  description = "EC2 Region for the VPC"
  default     = "ap-southeast-1"
}

# variable "remote_cidr" {
#     description = "CIDR from Remote Testing Source"
#     default = "1.2.3.4/32" # Change this to the public IP of your ISP
# }

variable "vpc_cidr" {
  description = "CIDR for the whole VPC"
  default     = "172.16.0.0/16"
}

variable "public_subnet_2a_cidr" {
  description = "CIDR for the Public 2a Subnet"
  default     = "172.16.1.0/24"
}

variable "public_subnet_2b_cidr" {
  description = "CIDR for the Public 2b Subnet"
  default     = "172.16.2.0/24"
}

variable "public_subnet_2c_cidr" {
  description = "CIDR for the Public 2c Subnet"
  default     = "172.16.3.0/24"
}

variable "private_subnet_2a_cidr" {
  description = "CIDR for the Private 2a Subnet"
  default     = "172.16.4.0/24"
}

variable "private_subnet_2b_cidr" {
  description = "CIDR for the Private 2b Subnet"
  default     = "172.16.5.0/24"
}

variable "private_subnet_2c_cidr" {
  description = "CIDR for the Private 2c Subnet"
  default     = "172.16.6.0/24"
}

variable "private_db_subnet_2a_cidr" {
  description = "CIDR for the Private 2a Subnet"
  default     = "172.16.20.0/24"
}

variable "private_db_subnet_2b_cidr" {
  description = "CIDR for the Private 2b Subnet"
  default     = "172.16.21.0/24"
}

variable "private_db_subnet_2c_cidr" {
  description = "CIDR for the Private 2c Subnet"
  default     = "172.16.22.0/24"
}

# variable "key_path" {
#     description = "SSH Public Key Patch"
#     default = "C:/Users/user_home/.ssh/id_rsa.pub" #Change this to valid ssh key on your system    
# }

