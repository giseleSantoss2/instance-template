#vpc_id            = "vpc-0000"
region            = "us-east-1"
availability_zone = "us-east-1a"
sg_name           = "MySecurityGroup"
#subnet_id         = "subnet-0000"
#role              = "arn:${Partition}:iam::${Account}:role/${RoleNameWithPath}"

instances = {
  # Windows
  "windows19" = {
    instance_name = "windows19"
    ami           = "ami-0a8128f5266cdc447"
    instance_type = "t2.medium"
  },
  "windows22" = {
    instance_name = "windows22"
    ami           = "ami-07cc1bbe145f35b58"
    instance_type = "t3.medium"
  },
  # Amazon Linux
  "amazon2" = {
    instance_name = "amazon2"
    ami           = "ami-0c8e23f950c7725b9"
    instance_type = "t2.medium"
  },
  # Ubuntu
  "ubuntu22.04" = {
    instance_name = "ubuntu22.04"
    ami           = "ami-0a0e5d9c7acc336f1"
    instance_type = "t2.medium"
  },
  "ubuntu24.04" = {
    instance_name = "ubuntu24.04"
    ami           = "ami-0e86e20dae9224db8"
    instance_type = "t2.medium"
  }
}

common_tags = {
  application = "DevOps"
  terraform   = "True"
  env         = "dev"
}

