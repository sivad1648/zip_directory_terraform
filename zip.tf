##Zip a directory for lambda purpose

locals {
    lambda_zip_location = "./siva.zip"
}
data "archive_file" "lambda_function" {
  type        = "zip"
  source_dir = "siva"
  output_path = "${local.lambda_zip_location}"
}