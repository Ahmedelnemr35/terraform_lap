variable "vpc_cidr_root" {
    type = string  
}

variable "vpc_name_root" {
  type = string
}

variable "aws_internet_gateway_root" {
    type = string
  
}

variable "public_subnet_cidr_root" {
  type = string
}

variable "public_subnet_az_root" {
  type = string
}

variable "map_public_ip_on_launch_root" {
    type = bool
    default = false
}

variable "public_subnet_name_root" {
  type = string
}

variable "private_subnet_cidr_root" {
  type = string
}

variable "private_subnet_az_root" {
  type = string
}

variable "map_private_ip_on_launch_root" {
    type = bool
    default = false
}

variable "private_subnet_name_root" {
  type = string
}

variable "public_cidr_block_root" {
  type = string
  
}

variable "public_gw_egress_root" {
  type = string
}

variable "public_rt_name_root" {
  type = string
}

variable "private_gw_egress_root" {
  type = string
}


variable "private_rt_name_root" {
  type = string
}