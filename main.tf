provider "aws" {
  region = var.region
}

resource "aws_ebs_volume" "volume" {
  availability_zone = var.volume.zone
  size              = var.volume.size
  encrypted         = var.volume.encrypted
  type              = var.volume.type

  tags = {
    Name = var.volume.name
  }
}