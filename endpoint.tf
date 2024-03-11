resource "aws_vpc_endpoint" "s3" {
    vpc_id            = aws_vpc.terraform-example.id
    service_name      = "com.amazonaws.ap-northeast-1.s3"
    vpc_endpoint_type = "Gateway"

    route_table_ids = [aws_vpc.terraform-example.main_route_table_id]
    tags = {
        Name = "terraform-example-s3-endpoint"
    }
}
