provider "aws" {
    region="us-east-1"
}

variable "name" {
    description="Name of the web box at apply"
}

resource "aws_instance" "devops_01_web" {
    ami = "ami-04b9e92b5572fa0d1"
    instance_type = "t2.micro"
    key_name = "scotty"

    tags = {
        Name = "${var.name}"
    }
}
