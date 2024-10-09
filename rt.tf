#Define public routing table
resource "aws_route_table" "public-rt" {
  vpc_id = aws_vpc.default.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
  tags = {
    Name = "Customer_Public_Subnet_Rt"
  }
}

#Assign the route table to the public subnet
resource "aws_route_table_association" "public-rt1" {
  subnet_id      = aws_subnet.public-subnet1.id
  route_table_id = aws_route_table.public-rt.id
}

resource "aws_route_table_association" "public-rt2" {
  subnet_id      = aws_subnet.public-subnet2.id
  route_table_id = aws_route_table.public-rt.id
}

resource "aws_route_table_association" "public-rt3" {
  subnet_id      = aws_subnet.public-subnet3.id
  route_table_id = aws_route_table.public-rt.id
}

#Define private routing table
resource "aws_route_table" "private-rt" {
  vpc_id = aws_vpc.default.id
  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_gw1.id
  }
  tags = {
    Name = "Customer_Private_Subnet_Rt"
  }
}

#Assign the route table to the private subnet
resource "aws_route_table_association" "private-rt1" {
  subnet_id      = aws_subnet.private-subnet1.id
  route_table_id = aws_route_table.private-rt.id
}

resource "aws_route_table_association" "private-rt2" {
  subnet_id      = aws_subnet.private-subnet2.id
  route_table_id = aws_route_table.private-rt.id
}

resource "aws_route_table_association" "private-rt5" {
  subnet_id      = aws_subnet.private-subnet3.id
  route_table_id = aws_route_table.private-rt.id
}

resource "aws_route_table_association" "private-rt3" {
  subnet_id      = aws_subnet.private-db-subnet1.id
  route_table_id = aws_route_table.private-rt.id
}

resource "aws_route_table_association" "private-rt4" {
  subnet_id      = aws_subnet.private-db-subnet2.id
  route_table_id = aws_route_table.private-rt.id
}

resource "aws_route_table_association" "private-rt6" {
  subnet_id      = aws_subnet.private-db-subnet3.id
  route_table_id = aws_route_table.private-rt.id
}