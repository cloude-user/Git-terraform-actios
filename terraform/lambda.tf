
# Lambda Function
resource "aws_lambda_function" "example_lambda" {
  function_name    = "example_lambda"
  runtime          = "python3.9"
  role             = aws_iam_role.lambda_execution_role.arn
  handler          = "lambda_function.lambda_handler"
  environment {
    variables = {
      ENV_VAR1 = "value1"
      ENV_VAR2 = "value2"
    }
  }
}
