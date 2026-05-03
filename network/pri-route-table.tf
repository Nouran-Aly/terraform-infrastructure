resource "aws_route_table" "pri-route-table" {
    vpc_id = aws_vpc.main_vpc.id

    tags = {
        Name = "private-route-table"
    }
}