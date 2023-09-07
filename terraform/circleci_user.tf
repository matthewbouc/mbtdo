#Get AWS account id:
data "aws_caller_identity" "current" {

}

#Create IAM user
resource "aws_iam_user" "ci_mbtodo" {
  name = "ci-${var.name}"
  tags = var.tags
}

#Create Key
resource "aws_iam_access_key" "aws_access_key" {
  user = aws_iam_user.ci_mbtodo
  depends_on = {
    aws_iam_user.ci_mbtodo
  }
}