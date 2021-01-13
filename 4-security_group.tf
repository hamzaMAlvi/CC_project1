
resource "aws_security_group" "project-p1-sg" {
    name = "project-p1-sg"
    description = "Allow inbound traffic for port 22 and 80"
    vpc_id = "${aws_vpc.project_p1_vpc.id}"
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Name = "project-p1-sg"
    }
}
