#Define the public subnets

resource "aws_subnet" "public-subnet1" {
  vpc_id            = aws_vpc.default.id
  cidr_block        = var.public_subnet_2a_cidr
  availability_zone = "ap-southeast-1a"
  tags = {
    Name = "Customer _Public01_Subnet"
  }
}

resource "aws_subnet" "public-subnet2" {
  vpc_id            = aws_vpc.default.id
  cidr_block        = var.public_subnet_2b_cidr
  availability_zone = "ap-southeast-1b"
  tags = {
    Name = "Customer_Public02_Subnet"
  }
}

resource "aws_subnet" "public-subnet3" {
  vpc_id            = aws_vpc.default.id
  cidr_block        = var.public_subnet_2c_cidr
  availability_zone = "ap-southeast-1c"
  tags = {
    Name = "Customer_Public03_Subnet"
  }
}

#Define the private subnets

resource "aws_subnet" "private-subnet1" {
  vpc_id            = aws_vpc.default.id
  cidr_block        = var.private_subnet_2a_cidr
  availability_zone = "ap-southeast-1a"
  tags = {
    Name = "Customer_Private01_Subnet"
  }
}

resource "aws_subnet" "private-subnet2" {
  vpc_id            = aws_vpc.default.id
  cidr_block        = var.private_subnet_2b_cidr
  availability_zone = "ap-southeast-1b"
  tags = {
    Name = "Customer_Private02_Subnet"
  }
}

resource "aws_subnet" "private-subnet3" {
  vpc_id            = aws_vpc.default.id
  cidr_block        = var.private_subnet_2c_cidr
  availability_zone = "ap-southeast-1c"
  tags = {
    Name = "Customer_Private03_Subnet"
  }
}

#Define the database private subnets

resource "aws_subnet" "private-db-subnet1" {
  vpc_id            = aws_vpc.default.id
  cidr_block        = var.private_db_subnet_2a_cidr
  availability_zone = "ap-southeast-1a"
  tags = {
    Name = "Customer_Database01_Subnet"
  }
}

resource "aws_subnet" "private-db-subnet2" {
  vpc_id            = aws_vpc.default.id
  cidr_block        = var.private_db_subnet_2b_cidr
  availability_zone = "ap-southeast-1b"
  tags = {
    Name = "Customer_Database02_Subnet"
  }
}

resource "aws_subnet" "private-db-subnet3" {
  vpc_id            = aws_vpc.default.id
  cidr_block        = var.private_db_subnet_2c_cidr
  availability_zone = "ap-southeast-1c"
  tags = {
    Name = "Customer_Database03_Subnet"
  }
}

#Define DB Subnet Group
resource "aws_db_subnet_group" "default" {
  name       = "main-subnet-group"
  subnet_ids = ["${aws_subnet.private-db-subnet1.id}", "${aws_subnet.private-db-subnet2.id}", "${aws_subnet.private-db-subnet3.id}"]
  tags = {
    Name = "Customer_Database_Subnet"
    #Service = "Terraforming"
  }
}
