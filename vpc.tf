resource "aws_vpc" "terraform-example" {
    cidr_block = "10.40.0.0/20"
    enable_dns_support = true
    enable_dns_hostnames = true
    tags = {
        Name = "terraform-example-vpc"
    }
}

resource "aws_subnet" "terraform-example" {
    vpc_id     = aws_vpc.terraform-example.id
    cidr_block = "10.40.0.0/24"
    map_public_ip_on_launch = true
    availability_zone = "ap-northeast-1a"

    tags = {
        Name = "terraform-example-subnet"
    }
}
