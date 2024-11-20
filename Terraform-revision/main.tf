resource "aws_iam_user" "employee" {
  name = "Dianna"
}
resource "aws_iam_group" "group" {
    name = "sre"
}

resource "aws_iam_group_membership" "name1" {
    name = "addinguser"
    group = aws_iam_group.group.name
    users = [aws_iam_user.employee.name]
    
}