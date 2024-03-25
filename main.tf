provider "rhel" {
  region = "us-east-1"
}

resource "aws_instance" "RHEL-Server" {
  count         = 1
  ami           = "ami-0fe630eb857a6ec83"
  instance_type = "t2.medium"
  key_name      = "rhelkeypair1"
  tags = {
    Name = "RHEL-Server"
  }
}


provider "ubuntu" {
  region = "us-east-1"
}

resource "aws_instance" "Ubuntu-Server" {
  count         = 1
  ami           = "ami-080e1f13689e07408"
  instance_type = "t2.medium"
  key_name      = "ubuntu2024"
  tags = {
    Name = "Ubuntu-Server"
  }
}


