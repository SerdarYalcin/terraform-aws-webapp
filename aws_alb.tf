resource "aws_lb" "alb-web" {
  name               = "alb-web"
  internal           = false
  load_balancer_type = "application"
  security_groups    = ["${aws_security_group.alb-security-group.id}"]
  subnets            = aws_subnet.public-subnet-1.id

  enable_deletion_protection = true

  access_logs {
    bucket  = aws_s3_bucket.lb_logs.bucket
    prefix  = "alb-web"
    enabled = true
  }

  tags = {
    Environment = "production"
  }
}
