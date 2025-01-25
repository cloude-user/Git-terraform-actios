terraform{
    required_providers{
        aws={
            source = "hashicorp/aws"
            version = "5.54.1"
        }
    }
}

# main.tf
provider "aws" {
  region = var.region
}




# # Lambda function infrastructure
# resource "aws_lambda_function" "lambda_function" {
#   function_name = "sample_lambda_function"
#   role          = aws_iam_role.lambda_execution_role.arn
#   handler       = "index.handler"
#   runtime       = "python3.9"
#   s3_bucket     = aws_s3_bucket.lambda_code_bucket.id
#   s3_key        = "backend.zip"
# }
