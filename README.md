# terraform_ebs_volume

Terraform module to create ebs volume.

## Dependencies

None

## Terraform example

``` terraform
##################
# EBS Volume Variable
##################
variable "exampleVol" { 
  default = {
    # Size in Gigabytes
    size = 100
    # Enable or disable encryption
    encryptedd = true
    # Disk type - available options standard, gp2, gp3, io1, io2, sc1 or st1
    type = "gp2"
    # region with the zone letter, location of the provisioned volume
    zone = "eu-west-1a:
  } 
}

##################
# EC2 Instance
##################
module "exampleVol1" {
  source  = "git::https://github.com/virsas/terraform_ebs_volume.git?ref=v1.0.0"
  volume  = var.exampleVol
}
```
