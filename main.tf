module "ec2_instance" {
source = "terraform-aws-modules/ec2-instance/aws"
version = "~> 3.0"

name = "CI-CD"
ami      = "ami-09ba48996007c8b50"
