resource "aws_key_pair" "project_key_pair" {
    key_name = "project_key_pair"
    public_key = "${file("project_key_pair.pub")}"
}
