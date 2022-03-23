locals {
  # Get ID of ecp resources
  this_key_pair_name = var.create_key_pair ? concat(alicloud_ecp_key_pair.key.*.key_pair_name, [""])[0] : var.key_pair_name
}