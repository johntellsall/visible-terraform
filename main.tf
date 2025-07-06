resource "archive_file" "testme" {
  type        = "zip"
  source_file = "${path.module}/sample-file.txt"
  output_path = "${path.module}/test.zip"
}


terraform {
  required_providers {
    archive = {
      source = "hashicorp/archive"
      version = "2.7.1"
    }
  }
}
