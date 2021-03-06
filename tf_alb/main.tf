resource "aws_alb" "main" {
  name            = "alb-${var.lb_name}"
  subnets         = ["${var.public_subnets}"]
  security_groups = ["${aws_security_group.lb_sg.id}"]
  internal        = "${var.internal}"
}
