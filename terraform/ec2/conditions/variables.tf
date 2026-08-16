variable "image_id" {
    type        = string
    default     = "ami-0220d79f3f480ecf5"
    description = "RHEL-9 AMI ID"
}

variable "instance_type" {
    default = "t3.micro"
    type  = string
}

variable "instance_name" {
    default = "backend"
}