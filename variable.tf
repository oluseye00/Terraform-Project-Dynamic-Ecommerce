#VPC variables
variable "vpc_cidr" {
    default     = "10.0.0.0/16"
    description = "vpc cidr block"
    type        = string
}

variable "public_subnet_az1_cidr" {
    default     = "10.0.0.0/24"
    description = "public SN AZ1 cidr block"
    type        = string
}

variable "public_subnet_az2_cidr" {
    default     = "10.0.1.0/24"
    description = "public SN AZ2 cidr block"
    type        = string
}

variable "private_app_subnet_az1_cidr" {
    default     = "10.0.2.0/24"
    description = "private app SN AZ1 cidr block"
    type        = string
}

variable "private_app_subnet_az2_cidr" {
    default     = "10.0.3.0/24"
    description = "private app SN AZ2 cidr block"
    type        = string
}

variable "private_data_subnet_az1_cidr" {
    default     = "10.0.4.0/24"
    description = "private data SN AZ1 cidr block"
    type        = string
}

variable "private_data_subnet_az2_cidr" {
    default     = "10.0.5.0/24"
    description = "private data SN AZ2 cidr block"
    type        = string
}

# Security group variables
variable "ssh_location" {
    default     = "0.0.0.0/0"
    description = "the ip address that can ssh into the ec2"
    type        = string
}

# rds variables
variable "database_snapshot_identifier" {
    default     = "arn:aws:rds:us-east-1:764264526281:snapshot:fleetcart-final-snapshot"
    description = "database snapshot arn"
    type        = string
}

# rds instance clas
variable "database_instance_class" {
    default     = "db.t2.micro"
    description = "the database instance type"
    type        = string
}

# rds identifier
variable "database_instance_identifier" {
    default     = "dev-rds-db"
    description = "the database instance identifier"
    type        = string
}

# rds multi Az
variable "multi_az_deployment" {
    default     = false
    description = "create a stanby db instance"
    type        = bool
}

# application load balncer variables
variable "ssl_certificate_arn" {
    default     = "arn:aws:acm:us-east-1:764264526281:certificate/c7d6cf65-9e47-42ad-9018-c0959ead0130"
    description = "ssl certificate arn"
    type        = string
}

#sns topic variable
variable "operator_email" {
    default     = "joseowolabi3@gmail.com"
    description = "valid email address"
    type        = string
}

# asg variables
variable "launch_template_name" {
    default     = "dev-launch-template"
    description = "name of the launch template"
    type        = string
}

# ec2 image id
variable "ec2_image_id" {
    default     = "ami-079dfbf14e9a1e451"
    description = "id of the ami"
    type        = string
}

# instance type variables
variable "ec2_instance_type" {
    default     = "t2.micro"
    description = "ec2 instance type"
    type        = string
}

# keypair variables
variable "ec2_keypair_name" {
    default     = "myec2key"
    description = "ec2 key pair"
    type        = string
}

# route 53 variables
variable "domain_name" {
    default     = "paulowolabi.link"
    description = "domain name"
    type        = string
}

variable "record_name" {
    default     = "www"
    description = "sub domain name"
    type        = string
}