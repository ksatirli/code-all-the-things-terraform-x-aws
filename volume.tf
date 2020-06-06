// create EBS Volume
resource "aws_ebs_volume" "hack_the_ne" {
  availability_zone = var.availability_zone
  size              = 100
  type              = "io1"
  iops              = 1000

  tags = {
    Name = "Terraform-managed EBS Volume for Hack the NE"
  }
}

// attach EBS Volume to EC2 Instance
resource "aws_volume_attachment" "hack_the_ne" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.hack_the_ne.id
  instance_id = aws_instance.hack_the_ne.id
}
