resource "aws_instance" "Test" {
  ami                         = "${data.aws_ami.centos.id}"
  associate_public_ip_address = true
  instance_type               = "${var.instance_type}"
  vpc_security_group_ids = ["${aws_security_group.ticket1.id}"]
  key_name                    = "${aws_key_pair.Ticket1.key_name}"
  tags = {
     Name = "Docker"
  }
}