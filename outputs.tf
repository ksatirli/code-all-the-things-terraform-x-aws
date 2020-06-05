// output a ready-to-copy-and-paste version of a SSH connection string
output "ssh_connection_string" {
  value = "ssh -i \"${var.ssh_key_file}\" ec2-user@${aws_instance.hack_the_ne.public_ip}"
}
