output "ecp_instance_id" {
  value       = concat(alicloud_ecp_instance.instance[*].id, [""])[0]
  description = "The ID of the instance."
}

output "ecp_instance_name" {
  value       = concat(alicloud_ecp_instance.instance[*].instance_name, [""])[0]
  description = "The name of the instance."
}

output "ecp_instance_status" {
  value       = concat(alicloud_ecp_instance.instance[*].status, [""])[0]
  description = "The status of the instance."
}

output "ecp_key_pair_name" {
  value       = concat(alicloud_ecp_key_pair.key[*].key_pair_name, [""])[0]
  description = "The name of the key pair."
}
