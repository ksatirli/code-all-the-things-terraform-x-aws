provider "tls" {
  version = "~> 2.1"
}

provider "local" {
  version = "~> 1.4.0"
}

provider "aws" {
  version = "~> 2.65"
  region  = "us-east-1"
}
