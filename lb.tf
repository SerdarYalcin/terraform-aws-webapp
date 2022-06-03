resource "aws_instance" "lb1" {
  ami           = var.ami-id # us-east-1
  instance_type = var.lb-instance-type
  key_name = var.key-pair
  subnet_id = aws_subnet.public-subnet-1.id
  security_groups = ["${aws_security_group.alb-security-group.id}"]
  credit_specification {
    cpu_credits = "unlimited"
  }
  tags = {
   "Name" = "lb1"
  }
}

resource "aws_instance" "lb2" {
  ami           = var.ami-id # us-east-1
  instance_type = var.lb-instance-type
  key_name = var.key-pair
  subnet_id = aws_subnet.public-subnet-2.id
  security_groups = ["${aws_security_group.alb-security-group.id}"]
  credit_specification {
    cpu_credits = "unlimited"
  }
  tags = {
   "Name" = "lb2"
  }
}
