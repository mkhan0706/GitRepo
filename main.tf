resource "aws_iam_user" "iam-user" {

  count = length(var.iam-user)
  name = var.iam-user[count.index]
  path = "/system/"

  tags =var.tags
}