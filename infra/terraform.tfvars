bucket_name = "dev-proj-1-remote-state-bucket-12335679"
name        = "environment"
environment = "dev-1"

vpc_cidr             = "10.0.0.0/16"
vpc_name             = "dev-proj-eu-central-vpc-1"
cidr_public_subnet   = ["10.0.1.0/24", "10.0.2.0/24"]
cidr_private_subnet  = ["10.0.3.0/24", "10.0.4.0/24"]
eu_availability_zone = ["ap-south-1a", "ap-south-1b"]

public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPlGWojVSrOYGjjCguhQTt/wwLwLypOwcvr4uZelFgbm hp@DESKTOP-Q2AQ4F8"
ec2_ami_id     = "ami-0f918f7e67a3323f0"

ec2_user_data_install_apache = "./template/ec2_install_apache.sh"

domain_name = "devopslab.sbs"