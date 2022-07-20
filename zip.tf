locals {
    lambda_zip_location = "./lambda_function.zip"
}
data "archive_file" "lambda_function" {
  type        = "zip"
  source_file = "lambda_function.py"
  output_path = "${local.lambda_zip_location}"
}