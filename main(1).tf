resource "aws_instance" "free_ec2" {

  ami           = "ami-0f5ee92e2d63afc18"   # Amazon Linux (Mumbai)
  instance_type = "t2.micro"

  key_name = "Jeeva_VM"

  tags = {
    Name = "Terraform-Free-EC2"
  }

}