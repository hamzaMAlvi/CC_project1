resource "aws_autoscaling_group" "project_p1_asg" {
  name = "project_p1_asg"
  desired_capacity = 1
  max_size = 1
  min_size = 1
  launch_template {
    id      = "${aws_launch_template.project_p1_launchTemplate.id}"
    version = "$Latest"
  }
  vpc_zone_identifier  = ["${aws_subnet.private_subnet_1.id}", "${aws_subnet.private_subnet_2.id}"]
}
