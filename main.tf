resource "aws_iam_user" "testing" {
    provider = aws.main
    name = var.username1
}

resource "aws_iam_user_policy" "policy" {
    provider = aws.main
    name = var.policy-name
    user = aws_iam_user.testing.name
    policy = var.policy
}

resource "aws_iam_user_group_membership" "bindgroup" {
    provider = aws.main
    user = aws_iam_user.testing.name
    groups = [var.group]
}