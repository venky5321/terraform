resource "aws_instance" "db" {

    ami = "ami-0220d79f3f480ecf5"
    vpc_security_group_ids = ["sg-08fa65c11c1dfb9c3"]
    instance_type = "t3.micro"
    
    tags = {
      Name = "db"
    }
}