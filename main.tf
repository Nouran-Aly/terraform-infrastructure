module "network_module" {
  source = "./network"
  subnets_map = var.subnets_map
}