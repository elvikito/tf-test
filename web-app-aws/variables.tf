# Input Variables
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type = string
  default = "us-east-1"
}

variable "instance_type" {
  description = "EC2 Instance Type - Instance Sizing"
  type = string
  default = "t2.micro"
  #default = "t2.small"
}

variable "instance_ami" {
  description = "EC2 Instance AMI"
  type = string
  default = "ami-065efef2c739d613b"
}
