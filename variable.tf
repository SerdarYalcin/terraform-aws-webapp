variable "vpc-cidr" {
  default = "10.0.0.0/16"
  description = "VPC CIDR block"
  type = string
}

variable "public-subnet-1-cidr" {
  default = "10.0.0.0/24"
  description = "public-subnet-1-cidr-block"
  type = string
}

variable "public-subnet-2-cidr" {
  default = "10.0.1.0/24"
  description = "public-subnet-2-cidr-block"
  type = string
}

variable "private-subnet-1-cidr" {
  default = "10.0.2.0/24"
  description = "private-subnet-1-cidr-block"
  type = string
}

variable "private-subnet-2-cidr" {
  default = "10.0.3.0/24"
  description = "private-subnet-2-cidr-block"
  type = string
}

variable "private-subnet-3-cidr" {
  default = "10.0.4.0/24"
  description = "private-subnet-3-cidr-block"
  type = string
}

variable "private-subnet-4-cidr" {
  default = "10.0.5.0/24"
  description = "private-subnet-4-cidr-block"
  type = string
}

variable "ssh-location" {
  default = "0.0.0.0/0"
  description = "ip address that can ssh into ec2"
  type = string
}

variable "lb-instance-type" {
  default = "t2.micro"
  description = "lb instance type"
  type = string
}

variable "app-instance-type" {
  default = "t2.micro"
  description = "app instance type"
  type = string
}

variable "db-instance-type" {
  default = "t2.micro"
  description = "db instance type"
  type = string
}

variable "key-pair" {
  default = "mykp"
  description = "key pair name"
  type = string
}

variable "ami-id" {
  default = "ami-0022f774911c1d690"
  description = "linux ami id"
  type = string
}
