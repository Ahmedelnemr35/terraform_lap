resource "aws_vpc" "myvpc" {
    cidr_block = var.vpc_cidr

tags={
    Name = var.vpc_name
}
}

resource "aws_internet_gateway" "mygw" {
    vpc_id = aws_vpc.myvpc.id

tags = {
  Name=var.aws_internet_gateway
    }
  }

resource "aws_subnet" "public" {
  vpc_id = aws_vpc.myvpc.id
    cidr_block = var.public_subnet_cidr
    availability_zone = var.public_subnet_az
    map_public_ip_on_launch = var.map_public_ip_on_launch
tags = {
  Name = var.public_subnet_name
    }
}

resource "aws_subnet" "private" {
  vpc_id = aws_vpc.myvpc.id
    cidr_block = var.private_subnet_cidr
    availability_zone = var.private_subnet_az
    map_public_ip_on_launch = var.map_private_ip_on_launch
tags = {
  Name = var.private_subnet_name
    }
}

##Routetable

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = var.public_cidr_block
    gateway_id = aws_internet_gateway.mygw.id
  }

  route {
   cidr_block        = aws_vpc.myvpc.cidr_block
   egress_only_gateway_id = var.public_gw_egress
  }

  tags = {
    Name = var.public_rt_name
  }
}

#private route table
resource "aws_route_table" "private" {
  vpc_id = aws_vpc.myvpc.id

  route {
     cidr_block  = aws_vpc.myvpc.cidr_block
    egress_only_gateway_id = var.private_gw_egress
  }

  tags = {
    Name = var.private_rt_name
  }
}

resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "private" {
  subnet_id      = aws_subnet.private.id
  route_table_id = aws_route_table.private.id
}