# Security Group
resource "aws_security_group" "security_group" {
  # vpc_id = var.vpc_id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
   # cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
   # cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(var.common_tags, {
    Name = var.sg_name
  })
}

# Instance 
resource "aws_instance" "instance" {
  for_each                    = var.instances
  ami                         = each.value.ami
  instance_type               = each.value.instance_type
  associate_public_ip_address = false
  # vpc_security_group_ids      = [aws_security_group.security_group.id]
  # subnet_id                   = var.subnet_id
  #iam_instance_profile         = var.role

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 30
    encrypted             = true
    delete_on_termination = true
    tags = merge(var.common_tags, {
      Name = "Root-${each.value.instance_name}"
    })
  }

  lifecycle {
    ignore_changes        = [ebs_block_device]
    create_before_destroy = true
  }

  tags = merge(var.common_tags, {
    Name = "Instance-${each.value.instance_name}"
  })

  # IMDSv2
  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "required"
  }
}
