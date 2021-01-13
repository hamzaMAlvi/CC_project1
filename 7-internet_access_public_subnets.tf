resource "aws_internet_gateway" "project_p1_igw" {
    vpc_id = "${aws_vpc.project_p1_vpc.id}"
    tags = {
        Name = "project_p1_igw"
    }
}

resource "aws_route_table" "project_p1_public_rt" {
    vpc_id = "${aws_vpc.project_p1_vpc.id}"
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.project_p1_igw.id}"
    }
    tags = {
        Name = "project_p1_public_rt"
    }
}

resource "aws_route_table_association" "project_p1_public_subnet_1"{
    subnet_id = "${aws_subnet.public_subnet_1.id}"
    route_table_id = "${aws_route_table.project_p1_public_rt.id}"
}

resource "aws_route_table_association" "project_p1_public_subnet_2"{
    subnet_id = "${aws_subnet.public_subnet_2.id}"
    route_table_id = "${aws_route_table.project_p1_public_rt.id}"
}
