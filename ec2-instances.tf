resource "aws_instance" "bastion" {
  ami           = "resolve:ssm:/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
  instance_type = "t3.micro"
  subnet_id = module.network_module.subnets["private_subnet1"].id
  vpc_security_group_ids = [ aws_security_group.pub-sg.id ]
  associate_public_ip_address = true

  provisioner "local-exec" {
    command = "echo 'Bastion public ip ${self.public_ip}'"
  }

  tags = {
    Name = "bastion"
  }
}

resource "aws_instance" "application" {
  ami           = "resolve:ssm:/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
  instance_type = "t3.micro"
  subnet_id = module.network_module.subnets["private_subnet1"].id
  vpc_security_group_ids = [ aws_security_group.pri-sg.id ]

  tags = {
    Name = "application"
  }
}
