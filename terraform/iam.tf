# IAM role for Lambda execution
resource "aws_iam_role" "cloud_execution_role" {
  name = "cloud_execution_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect    = "Allow"
        Principal = { Service = "lambda.amazonaws.com" }
        Action    = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_policy" "lambda_s3_access_policy" {
  name = "lambda_s3_access_policy"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = ["s3:GetObject"]
        Resource = "arn:aws:s3:::sundeep43-lambda-storage001/*"
      }
    ]
  })
}


# IAM policy for Lambda execution
resource "aws_iam_policy" "cloud_execution_policy" {
  name        = "cloud_execution_policy"
  description = "Policy for Lambda to access resources"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = ["logs:CreateLogGroup", "logs:CreateLogStream", "logs:PutLogEvents"]
        Resource = "arn:aws:logs:*:*:*"
      }
    ]
  })
}

# Attach the policy to the role
resource "aws_iam_role_policy_attachment" "cloud_execution_attachment" {
  role       = aws_iam_role.cloud_execution_role.name
  policy_arn = aws_iam_policy.cloud_execution_policy.arn
}

resource "aws_iam_role_policy_attachment" "lambda_s3_attachment" {
  role       = aws_iam_role.cloud_execution_role.name
  policy_arn = aws_iam_policy.lambda_s3_access_policy.arn
}