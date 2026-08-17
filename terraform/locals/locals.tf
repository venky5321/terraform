locals {
    ami_id = "ami-0220d79f3f480ecf5"
    sg_id ="sg-08fa65c11c1dfb9c3" # replace with your security_group
    #instance_type = "t3.micro"
    instance_type = local.instance_type
    tags = {
        Name = "locals"
    }
}