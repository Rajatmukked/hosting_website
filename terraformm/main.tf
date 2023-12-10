module "vpc" {
  source = "./vpc"
}
module "sg" {
  source = "./sg"
  vpc_id  = module.vpc.vpc_id
  vpc_cidr_block = module.vpc.vpc_cidr_block
}