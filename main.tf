# module "myvpc" {
#   source = "./modules/network"
#   vpc_cidr = var.vpc_cidr_root
#   vpc_name = var.vpc_name_root
# }

# module "public" {
#     source = "./modules/network"
#     public_subnet_cidr = var.public_subnet_cidr_root
#     public_subnet_az = var.public_subnet_az_root
#     map_public_ip_on_launch = var.map_public_ip_on_launch_root
#     public_subnet_name = var.public_subnet_name_root
#     vpc_id = module.myvpc.vpc_id
# }

# module "private" {
#     source = "./modules/network"
#     vpc_id = module.myvpc.vpc_id
#     private_subnet_cidr = var.private_subnet_cidr_root
#     private_subnet_az = var.private_subnet_az_root
#     map_private_ip_on_launch = var.map_private_ip_on_launch_root
#     private_subnet_name = var.private_subnet_name_root
# }

module "mynetwork" {
  source = "./modules/network"
  vpc_id = var.aws_internet_gateway_root
  #var for vpc
    vpc_cidr = var.vpc_cidr_root
    vpc_name = var.vpc_name_root
#var for igw
    aws_internet_gateway = var.aws_internet_gateway_root
#var for public subnet
    public_subnet_cidr = var.public_subnet_cidr_root
    public_subnet_az = var.public_subnet_az_root
    map_public_ip_on_launch = var.map_public_ip_on_launch_root
    public_subnet_name = var.public_subnet_name_root
#var for private subnet
    private_subnet_cidr = var.private_subnet_cidr_root
    private_subnet_az = var.private_subnet_az_root
    map_private_ip_on_launch = var.map_private_ip_on_launch_root
    private_subnet_name = var.private_subnet_name_root
#var for public route table
public_cidr_block = var.public_cidr_block_root
public_gw_egress = var.public_gw_egress_root
public_rt_name = var.public_rt_name_root
private_gw_egress = var.private_gw_egress_root
private_rt_name = var.private_rt_name_root
}

