# aws provider, region, and credentials
provider "aws" {
  region = "us-east-1"
  shared_credentials_files = ["/home/kavitha/.aws/credentials"]
}

# provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity_t2" {
  count = "4"
  ami = "ami-0b0dcb5067f052a63"
  instance_type = "t2.micro"
  tags = {
    name = "Udacity T2"
  }
}

# provision 2 m4.large EC2 instances named Udacity M4
/*resource "aws_instance" "Udacity_m4" {
  count = "2"
  ami = "ami-0b0dcb5067f052a63"
  instance_type = "m4.large"
  tags = {
    name = "Udacity M4"
  }
}*/