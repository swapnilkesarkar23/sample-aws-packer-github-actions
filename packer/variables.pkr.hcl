variable "region" {
  type    = string
  default = "eu-west-1"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "subnet_id" {
  type = string
  sensitive = true
}

variable "vpc_id" {
  type = string
  sensitive = true
}