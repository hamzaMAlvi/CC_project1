resource "aws_lb" "albProjectP1" {
  name               = "albProjectP1"
  internal           = false
  load_balancer_type = "application"
  security_groups    = ["${aws_security_group.project-p1-sg.id}"]
  subnets            = ["${aws_subnet.public_subnet_1.id}", "${aws_subnet.public_subnet_2.id}"]
}

resource "aws_lb_listener" "albListener" {  
  load_balancer_arn = "${aws_lb.albProjectP1.arn}"
  port              = "80"
  protocol          = "HTTP"
  default_action {    
    target_group_arn = "${aws_lb_target_group.tgProjectP1.arn}"
    type             = "forward"  
  }
}

resource "aws_lb_listener_rule" "albListenerRule" {
  depends_on   = ["aws_lb_target_group.tgProjectP1"]
  listener_arn = "${aws_lb_listener.albListener.arn}"
  action {
    type = "forward"
    target_group_arn = "${aws_lb_target_group.tgProjectP1.arn}"
  }
  condition {
    field  = "path-pattern"
    values = ["0.0.0.0/0"]
  }
}
