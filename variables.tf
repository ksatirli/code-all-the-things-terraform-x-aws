# Amazon Linux 2 AMI (HVM), SSD Volume Type
variable "ami_id" {
  type        = string
  description = "AMI ID to use"
  default     = "ami-09d95fab7fff3776c"
}

variable "instance_type" {
  type        = string
  description = "Instance type to use"
  default     = "t2.micro"
}

variable "availability_zone" {
  type        = string
  description = "Availability Zone to use"
  default     = "us-east-1a"
}

variable "ssh_key_file" {
  type        = string
  description = "SSH Key file name"
  default     = "ec2-ssh-key.pem"
}

// get your public IP address by querying ICHI
data "http" "icanhazip" {
  // this value will be available in data.http.icanhazip.body
  url = "https://icanhazip.com/"
}
