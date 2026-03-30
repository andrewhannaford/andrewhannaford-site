output "nameservers" {
  description = "Route 53 nameservers — add these to Namecheap"
  value       = aws_route53_zone.main.name_servers
}

output "cloudfront_domain" {
  description = "CloudFront distribution domain name"
  value       = aws_cloudfront_distribution.site.domain_name
}

output "site_url" {
  description = "Live site URL"
  value       = "https://${var.domain_name}"
}
