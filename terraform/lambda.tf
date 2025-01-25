
# # Lambda Function
# resource "aws_lambda_function" "tony" {
#   function_name    = "siuuu"
#   runtime          = "python3.9"
#   role             = aws_iam_role.cloud_execution_role.arn
#   handler          = "lambda.handler"
#   s3_bucket        = "sundeep43-lambda-storage001"
#   s3_key           = "src/lambdas/lambda-package.zip"
#   environment {
#     variables = {
#       ENV_VAR1 = "Siuu"
#       ENV_VAR2 = "Siuuuuu"
#     }
#   }
# }

resource "aws_lambda_function" "tony" {
  function_name = "siuuu"
  runtime       = "python3.9"
  role          = aws_iam_role.cloud_execution_role.arn
  handler       = "lambda.handler"
  filename      = "../src/lambdas/lambda-package.zip"
  environment {
    variables = {
      ENV_VAR1 = "Siuu"
      ENV_VAR2 = "Siuuuuu"
    }
  }
}

