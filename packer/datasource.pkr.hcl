data "amazon-ami" "linux" {
  filters = {
    name                = "amzn2*"
    architecture        = "x86_64"
    root-device-type    = "ebs"
    virtualization-type = "hvm"
  }
  most_recent = true
  owners      = ["137112412989"]
}