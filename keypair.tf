// create Private Key Material for use as SSH Key
resource "tls_private_key" "hack_the_ne" {
  algorithm = "RSA"
  rsa_bits  = "2048"
}

// register Public Key part of SSH Key with EC2 Console
resource "aws_key_pair" "hack_the_ne" {
  key_name   = "Terraform-managed EC2 Key Pair for Hack the NE"
  public_key = tls_private_key.hack_the_ne.public_key_openssh

  tags = {
    Name = "Terraform-managed EC2 Key Pair for Hack the NE"
  }
}

// render Private Key part of SSH Key as a local file
resource "local_file" "private_ssh_key" {
  content  = tls_private_key.hack_the_ne.private_key_pem
  filename = "${path.module}/${var.ssh_key_file}"

  // set correct permissions on Private Key file
  file_permission = "0644"
}
