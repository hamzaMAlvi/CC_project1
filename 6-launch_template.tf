resource "aws_launch_template" "project_p1_launchTemplate" {
  name = "project_p1_launchTemplate"
  image_id = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["${aws_security_group.project-p1-sg.id}"]
  key_name = "project_key_pair"
  user_data = "${base64encode("${file("userdata.sh")}")}"
}
