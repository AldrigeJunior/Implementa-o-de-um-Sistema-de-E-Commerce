resource "aws_instance" "ecommerce1" {
  ami           = "ami-032930428bf1abbff"
  instance_type = "t3a.large"
  key_name = var.key_name
  vpc_security_group_ids = [aws_security_group.allow_ssh_http.id]
  associate_public_ip_address = true

  tags = {
    Name = "ecommerce1"
    ambiente = "bootcamp"
  }
}




