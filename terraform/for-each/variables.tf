variable "instance_names" {
    type     = map
    default  = {
    db = "t3.small"
    backend = "t3.micro"
    frontend = "t3.micro"
    }
}

variable "common_tags" {
    type = map
    default = {
        Project = "Expense"
        Terraform = "true"
    }
}

variable "domain_name" {
    default = "venkymadhumanchi.shop"
}

variable "zone_id" {
    default = "Z0870498TZATRMMR1SZ3"
}