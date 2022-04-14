source "amazon-ebs" "amazon-linux" {
  ami_description           = "Linux AMI created using Packer"
  ami_name                  = "packer-linux-aws"
  communicator              = "ssh"
  iam_instance_profile      = "packer-profile"
  instance_type             = var.instance_type
  region                    = var.region
  source_ami                = data.amazon-ami.linux.id
  ssh_clear_authorized_keys = true
  ssh_interface             = "session_manager"
  ssh_username              = "ec2-user"
  subnet_id                 = var.subnet_id
  vpc_id                    = var.vpc_id
  tags = {
    Name = "packer-linux-aws"
  }
}