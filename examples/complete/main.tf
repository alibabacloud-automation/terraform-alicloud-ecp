data "alicloud_ecp_zones" "default" {}

data "alicloud_ecp_instance_types" "default" {}

module "vpc" {
  source             = "alibaba/vpc/alicloud"
  create             = true
  vpc_name           = "tf-test-ecp"
  vpc_cidr           = "172.16.0.0/16"
  vswitch_name       = "tf-test-ecp"
  vswitch_cidrs      = ["172.16.0.0/21"]
  availability_zones = [data.alicloud_ecp_zones.default.zones.0.zone_id]
}

module "security_group" {
  source = "alibaba/security-group/alicloud"
  vpc_id = module.vpc.this_vpc_id
}

module "example" {
  source = "../.."


  #alicloud_ecp_key_pair
  create_key_pair = true
  key_pair_name   = "tf-test-ecp"
  public_key_body = var.public_key_body

  #alicloud_ecp_instance
  create_instance   = true
  instance_name     = var.instance_name
  description       = var.description
  security_group_id = module.security_group.this_security_group_id
  vswitch_id        = module.vpc.this_vswitch_ids[0]
  image_id          = "android_9_0_0_release_2851157_20211201.vhd"
  instance_type     = data.alicloud_ecp_instance_types.default.instance_types.0.instance_type
  vnc_password      = var.vnc_password
  payment_type      = var.payment_type
  status            = var.status

}