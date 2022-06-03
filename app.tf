resource "aws_instance" "app1" {
  ami           = var.ami-id # us-east-1
  instance_type = var.app-instance-type
  key_name = var.key-pair
  subnet_id = aws_subnet.private-subnet-1.id
  security_groups = ["${aws_security_group.webserver-security-group.id}"]
  credit_specification {
    cpu_credits = "unlimited"
  }
  tags = {
   "Name" = "app1"
  }
}

resource "aws_instance" "app2" {
  ami           = var.ami-id # us-east-1
  instance_type = var.app-instance-type
  key_name = var.key-pair
  subnet_id = aws_subnet.private-subnet-2.id
  security_groups = ["${aws_security_group.webserver-security-group.id}"]
  credit_specification {
    cpu_credits = "unlimited"
  }
  tags = {
   "Name" = "app2"
  }
}
