provider "aws" {
  region = "ap-southeast-2"
}

module "s3" {
  source = "./s3"
}


module "lambda" {
  source    = "./lambda"
  bucket_id = module.s3.bucket_id
}