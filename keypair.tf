resource "tls_private_key" "hack_the_ne" {
  algorithm = "RSA"
  rsa_bits  = "2048"
}

resource "aws_key_pair" "hack_the_ne" {
  key_name   = "Terraform-managed EC2 Key Pair for Hack the NE"
  public_key = tls_private_key.hack_the_ne.public_key_openssh

  tags = {
    Name = "Terraform-managed EC2 Key Pair for Hack the NE"
  }
}

resource "local_file" "foo" {
  content  = tls_private_key.hack_the_ne.private_key_pem
  filename = "${path.module}/ec2-ssh-key.pem"
}
