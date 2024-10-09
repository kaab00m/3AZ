#Define the Internet Gateway
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.default.id
  tags = {
    Name = "Customer_IGW_01"
  }
}