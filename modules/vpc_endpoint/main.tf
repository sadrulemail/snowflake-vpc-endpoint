resource "aws_security_group" "vpce_sg" {
  name        = "snowflake-vpce-sg"
  description = "Security group for Snowflake VPC Endpoint"
  vpc_id      = var.vpc_id

  ingress {
    description = "Allow HTTPS"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = var.allowed_cidrs
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "snowflake-vpce-sg"
  }
}
