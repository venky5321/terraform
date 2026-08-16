# resource <resource-type> <resource-name>

resource "aws_instance" "db" {

    ami = "ami-0220d79f3f480ecf5"
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = "t3.micro"
    # left side things are called arugments, right side are values.
    
    tags = {
      Name = "db"
    }
}


resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allowing  ssh  access"

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }


  egress {
    from_port        = 0 # from 0 to 0 means, opening all protocols
    to_port          = 0
    protocol         = "-1" # -1 all protocols
    cidr_blocks      = ["0.0.0.0/0"]
  }


  tags = {
    Name = "allow_ssh"
    Createdby = "Venky"
  }
}