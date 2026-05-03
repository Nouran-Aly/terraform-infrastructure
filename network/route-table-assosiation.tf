resource "aws_route_table_association" "pub-rt-ass" {
    subnet_id = aws_subnet.subnets["public_subnet1"].id
    route_table_id = aws_route_table.pub-route-table.id
}

resource "aws_route_table_association" "pri-rt-ass" {
    subnet_id = aws_subnet.subnets["private_subnet1"].id
    route_table_id = aws_route_table.pri-route-table.id
}