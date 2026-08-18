data "aws_ami" "ami_info" {

    most_recent = true
    owners = ["137112412989"]
    filter {
        name = "name"
        values = ["amzn2-ami-hvm-*-x86_64-gp2"]
    }
}

data "aws_vpc" "default" {
    default = true
}