resource "aws_instance" "bastion_1" {
  ami                    = "ami-053b0d53c279acc90" # Ubuntu server 22.04
  instance_type          = "t3.medium" # Do not forget to turn off the instance after the test (56$ per month)
  vpc_security_group_ids = [aws_security_group.web-sg.id]
  key_name               = "secGroupLesson2"
  iam_instance_profile   = "AWS-New"

  tags = {
    Name = "Jenkins_t3.medium"
  }
}
