resource "aws_instance" "redis1" {
  ami           = var.ami-id # us-east-1
  instance_type = var.db-instance-type
  key_name = var.key-pair
  subnet_id = aws_subnet.private-subnet-1.id
  security_groups = ["${aws_security_group.redis-security-group.id}"]
  credit_specification {
    cpu_credits = "unlimited"
  }
  tags = {
   "Name" = "redis1"
  }
}

resource "aws_instance" "redis2" {
  ami           = var.ami-id # us-east-1
  instance_type = var.db-instance-type
  key_name = var.key-pair
  subnet_id = aws_subnet.private-subnet-2.id
  security_groups = ["${aws_security_group.redis-security-group.id}"]
  credit_specification {
    cpu_credits = "unlimited"
  }
  tags = {
   "Name" = "redis2"
  }
}
