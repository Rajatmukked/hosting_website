resource "aws_security_group" "sg" {
  name = "${var.tag}-sg"
  description = "Allow http(s),ssh,rds"
  vpc_id = var.vpc_id

  ingress {
    description      = "SSH from VPC"
    from_port        = var.port.ssh
    to_port          = var.port.ssh
    protocol         = "tcp"
    cidr_blocks      = [var.vpc_cidr_block]
    
  }
    ingress {
    description      = "Http from VPC"
    from_port        = var.port.http
    to_port          = var.port.http
    protocol         = "tcp"
    cidr_blocks      = [var.vpc_cidr_block]
    
  }
    ingress {
    description      = "https from VPC"
    from_port        = var.port.https
    to_port          = var.port.https
    protocol         = "tcp"
    cidr_blocks      = [var.vpc_cidr_block]
    
  }
    ingress {
    description      = "RDS from VPC"
    from_port        = var.port.rds
    to_port          = var.port.rds
    protocol         = "tcp"
    cidr_blocks      = [var.vpc_cidr_block]
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.tag}-sg"
  }
}
