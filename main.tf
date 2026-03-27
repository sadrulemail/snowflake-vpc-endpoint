module "snowflake_vpc_endpoint" {
  source = "./modules/vpc_endpoint"

  vpc_id                 = var.vpc_id
  subnet_ids             = var.subnet_ids
  allowed_cidrs          = var.allowed_cidrs
  service_name           = var.snowflake_service_name
}