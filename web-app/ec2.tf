# Create EC2 Instance - Amazon Linux
resource "aws_instance" "ec2-vm" {
  ami           = "ami-03ededff12e34e59e" # data.aws_ami.amzlinux.id 
  instance_type = var.instance_type
  key_name      = "qella"
  user_data = file("install.sh")
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  tags = {
    "Name" = "vm-${terraform.workspace}-0"
  }
}