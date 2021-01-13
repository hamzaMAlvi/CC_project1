
resource "aws_vpc" "project_p1_vpc" {
    cidr_block = "10.0.0.0/16"
    enable_dns_hostnames = "true"
    instance_tenancy = "default"
    tags = {
        Name = "project_p1_vpc"
    }
}
