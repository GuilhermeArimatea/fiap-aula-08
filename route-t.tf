resource "aws_route_table" "rt_public" {
  vpc_id = aws_vpc.vpc_fiap.id

  # since this is exactly the route AWS will create, the route will be adopted
  route {
    cidr_block = aws_vpc.vpc_fiap.cidr_block
    gateway_id = "local"
  }

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}

resource "aws_main_route_table_association" "rt_association" {
  vpc_id         = aws_vpc.vpc_fiap.id
  route_table_id = aws_route_table.rt_public.id
}
