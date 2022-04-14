build {
  name = "ami-packer"
  sources = [
    "source.amazon-ebs.amazon-linux"
  ]
  provisioner "shell" {
    inline = ["echo Connected via SSM at '${build.User}@${build.Host}:${build.Port}'"]
  }
}