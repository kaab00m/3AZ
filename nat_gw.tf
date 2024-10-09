#Define NAT Gateway
resource "aws_eip" "eip_nat" {
  vpc = true
}

resource "aws_nat_gateway" "nat_gw1" {
  allocation_id = aws_eip.eip_nat.id
  subnet_id     = aws_subnet.public-subnet1.id
  depends_on    = [aws_internet_gateway.gw]
  tags = {
    Name = "Customer_NAT_GW_01"
  }
}