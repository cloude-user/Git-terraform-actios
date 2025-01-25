
# Lambda Function
resource "aws_lambda_function" "example_lambda" {
  function_name    = "example_lambda"
  runtime          = "python3.9"
  role             = aws_iam_role.cloud_execution_role.arn
  handler          = "lambda_function.lambda_handler"
  s3_bucket        = "sundeep43-lambda-storage001"
  s3_key           = "terraform/lambda.zip"
  environment {
    variables = {
      ENV_VAR1 = "value1"
      ENV_VAR2 = "value2"
    }
  }
}
