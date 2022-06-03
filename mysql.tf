resource "aws_instance" "db1" {
  ami           = var.ami-id # us-east-1
  instance_type = var.db-instance-type
  key_name = var.key-pair
  subnet_id = aws_subnet.private-subnet-3.id
  security_groups = ["${aws_security_group.database-security-group.id}"]
  credit_specification {
    cpu_credits = "unlimited"
  }
  tags = {
   "Name" = "db1"
  }
}

resource "aws_instance" "db2" {
  ami           = var.ami-id # us-east-1
  instance_type = var.db-instance-type
  key_name = var.key-pair
  subnet_id = aws_subnet.private-subnet-4.id
  security_groups = ["${aws_security_group.database-security-group.id}"]
  credit_specification {
    cpu_credits = "unlimited"
  }
  tags = {
   "Name" = "db2"
  }
}
