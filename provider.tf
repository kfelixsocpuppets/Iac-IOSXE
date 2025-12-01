#  
#  git clone git@github.com:CiscoDevNet/terraform-provider-iosxe.git
provider "iosxe" {
  username = tfadmin 
  password = var.password
  host     = var.host
}

