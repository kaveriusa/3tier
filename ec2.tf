# Create EC2 instance in private_app_subnet_az2
resource "aws_instance" "app_instance_az2" {
  ami                         = "ami-0866a3c8686eaeeba" # Replace with your desired AMI ID
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.private_app_subnet_az2.id
  key_name                    = var.keypair_name
  vpc_security_group_ids      = [aws_security_group.webserver_security_group.id]

  tags = {
    Name = "app-instance-az2"
  }
}

# Create EC2 instance in private_app_subnet_az1
resource "aws_instance" "app_instance_az1" {
  ami                         = "ami-0866a3c8686eaeeba" 
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.private_app_subnet_az1.id
  key_name                    = var.keypair_name
  vpc_security_group_ids      = [aws_security_group.ssh_security_group.id]

  tags = {
    Name = "app-instance-az1"
  }
}

# Create EC2 instance in public_app_subnet_az1
resource "aws_instance" "public_instance_az1" {
  ami                         = "ami-0866a3c8686eaeeba" 
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.public_subnet_az1.id
  key_name                    = var.keypair_name
  vpc_security_group_ids      = [aws_security_group.ssh_security_group.id]

  tags = {
    Name = "public-instance-az1"
  }
}

# Create EC2 instance in public_subnet_az2
resource "aws_instance" "public_instance_az2" {
  ami                         = "ami-0866a3c8686eaeeba" 
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.public_subnet_az2.id
  key_name                    = var.keypair_name
  vpc_security_group_ids      = [aws_security_group.ssh_security_group.id]

  tags = {
    Name = "public-instance-az2"
  }
}