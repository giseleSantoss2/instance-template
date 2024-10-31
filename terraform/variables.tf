# variable "vpc_id" {
#   type = string
# }

# variable "subnet_id" {
#   type = string
# }

# variable "role" {
#   type = string
# }


variable "region" {
  type = string
}

variable "availability_zone" {
  type = string
}

variable "sg_name" {
  type = string
}

variable "instances" {
  type = map(object({
    instance_name = string
    ami           = string
    instance_type = string
    #role          = string
  }))
}

variable "common_tags" {
  type = map(string)
}
