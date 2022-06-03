resource "aws_instance" "bastion" {
  ami           = "ami-0022f774911c1d690" # us-east-1
  instance_type = "t2.micro"
  key_name = var.key-pair
  subnet_id = aws_subnet.public-subnet-1.id
  security_groups = ["${aws_security_group.ssh-security-group.id}"]
  credit_specification {
    cpu_credits = "unlimited"
  }
  tags = {
   "Name" = "bastion"
  }
}
