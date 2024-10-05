variable "vpc_cidr" {
    type = string  
}

variable "vpc_name" {
  type = string
}

variable "vpc_id" {
    type = string
}

variable "aws_internet_gateway" {
    type = string
  
}

variable "public_subnet_cidr" {
  type = string
}

variable "public_subnet_az" {
  type = string
}

variable "map_public_ip_on_launch" {
    type = bool
    default = false
}

variable "public_subnet_name" {
  type = string
}

variable "private_subnet_cidr" {
  type = string
}

variable "private_subnet_az" {
  type = string
}

variable "map_private_ip_on_launch" {
    type = bool
    default = true
}

variable "private_subnet_name" {
  type = string
}

variable "public_cidr_block" {
  type = string
  
}

variable "public_gw_egress" {
  type = string
}

variable "public_rt_name" {
  type = string
}

variable "private_gw_egress" {
  type = string
  
}


variable "private_rt_name" {
  type = string
}