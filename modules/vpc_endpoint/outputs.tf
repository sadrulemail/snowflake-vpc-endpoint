output "dns_names" {
  description = "DNS entries for the Snowflake VPC Endpoint"
  value       = aws_vpc_endpoint.snowflake.dns_entry[*].dns_name
}
