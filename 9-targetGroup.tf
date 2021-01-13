resource "aws_lb_target_group" "tgProjectP1" {
  name        = "tgProjectP1"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = "${aws_vpc.project_p1_vpc.id}"
}
resource "aws_autoscaling_attachment" "asg_tg_attachment" {
  autoscaling_group_name = "${aws_autoscaling_group.project_p1_asg.id}"
  alb_target_group_arn   = "${aws_lb_target_group.tgProjectP1.arn}"
}
