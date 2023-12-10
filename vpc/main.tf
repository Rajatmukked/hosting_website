resource "aws_vpc" "vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  enable_dns_hostnames = true
  tags = {
    Name = "${var.tag}-vpc"
  }
}


/*resource "aws_subnet" "public_az1" {
  vpc_id = aws_vpc.vpc.id
  availability_zone = var.availability_zone[0]
  cidr_block = "10.0.0.0/24"
  tags = {
    Name = "${var.tag}-public_az1"
  }
}
  
resource "aws_subnet" "public_az2" {
  vpc_id = aws_vpc.vpc.id
  availability_zone = var.availability_zone[1]
  cidr_block = "10.0.1.0/24"
  tags = {
    Name = "${var.tag}-public_az2"
  }
}

resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "${var.tag}-ig"
  }
}

resource "aws_route_table" "route_table" {
  vpc_id = aws_vpc.vpc.id

    route {

    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gateway.id
    
    
  }
  
  
  tags = {
    Name = "${var.tag}-route_table"
  }
}

resource "aws_route_table_association" "route_table_association-a"  {
  subnet_id = aws_subnet.public_az1.id
  route_table_id = aws_route_table.route_table.id
}

resource "aws_route_table_association" "route_table_association-b"  {
  subnet_id = aws_subnet.public_az2.id
  route_table_id = aws_route_table.route_table.id
}
*/

