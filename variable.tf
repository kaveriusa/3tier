#vpc variables
variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "vpc cidr block"
  type        =  string
}

variable "public_subnet_az1_cidr" {
  default     = "10.0.0.0/24"
  description = "public subnet az1 cidr block"
  type        =  string
}

variable "public_subnet_az2_cidr" {
  default     = "10.0.1.0/24"
  description = "public subnet az2 cidr block"
  type        =  string
}

variable "private_app_subnet_az1_cidr" {
  default     = "10.0.2.0/24"
  description = "private app subnet az1 cidr block"
  type        =  string
}

variable "private_app_subnet_az2_cidr" {
  default     = "10.0.3.0/24"
  description = "private app subnet az2 cidr block"
  type        =  string
}

variable "private_data_subnet_az1_cidr" {
  default     = "10.0.4.0/24"
  description = "private data subnet az1 cidr block"
  type        =  string
}

variable "private_data_subnet_az2_cidr" {
  default     = "10.0.5.0/24"
  description = "private data subnet az2 cidr block"
  type        =  string
}

variable "ssh-location" {
  default     = "0.0.0.0/0"
  description = "Ip Address that can enter into ec2 instance"
  type        =  string
}

variable "database-snapshot-identifier" {
  default     = "arn:aws:rds:us-east-1:471112601159:snapshot:final"
  description = "The Database Snapshot ARN"
  type        =  string
}

variable "database-instance-class" {
  default     = "db.t4g.micro"
  description = "The Database Instance Type"
  type        =  string
}

variable "database-instance-identifier" {
  default     = "database-mysql"
  description = "The Database Instance Identifier"
  type        =  string
}

variable "multi_az-deployment" {
  default     = false
  description = "create a Standby DB Instance"
  type        =  bool
}

# Key pair variable
variable "keypair_name" {
  description = "Key pair name to access EC2 instances"
  type        = string
  default     = "tests" 
}
