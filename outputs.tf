output "snowflake_vpc_endpoint_dns" {
  description = "DNS names of the Snowflake VPC Endpoint"
  value       = module.snowflake_vpc_endpoint.dns_names
}