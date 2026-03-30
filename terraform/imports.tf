# These import blocks bring existing manually-created resources into Terraform state.
# Once you have run `terraform apply` successfully, this file can be deleted.

import {
  to = aws_s3_bucket.site
  id = "andrewhannaford.com"
}

import {
  to = aws_s3_bucket_website_configuration.site
  id = "andrewhannaford.com"
}

import {
  to = aws_s3_bucket_public_access_block.site
  id = "andrewhannaford.com"
}

import {
  to = aws_acm_certificate.site
  id = "arn:aws:acm:us-east-1:597146036100:certificate/34a4f4f1-7759-4e81-a686-519f9c321891"
}

import {
  to = aws_route53_zone.main
  id = "Z10395302TF2X5O0K4R38"
}

import {
  to = aws_route53_record.acm_validation["andrewhannaford.com"]
  id = "Z10395302TF2X5O0K4R38__9a7263c604418f93220c0b1ad7ce7336.andrewhannaford.com._CNAME"
}

import {
  to = aws_route53_record.acm_validation["www.andrewhannaford.com"]
  id = "Z10395302TF2X5O0K4R38__079594cfccaaf3ef36865b05c7ae08fe.www.andrewhannaford.com._CNAME"
}

import {
  to = aws_cloudfront_origin_access_control.site
  id = "E3E521W52VSPFR"
}
