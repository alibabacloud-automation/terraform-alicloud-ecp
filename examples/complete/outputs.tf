output "ecp_instance_id" {
  value       = module.example.ecp_instance_id
  description = "The ID of the instance."
}

output "ecp_instance_name" {
  value       = module.example.ecp_instance_name
  description = "The name of the instance."
}

output "ecp_instance_status" {
  value       = module.example.ecp_instance_status
  description = "The status of the instance."
}

output "ecp_key_pair_name" {
  value       = module.example.ecp_key_pair_name
  description = "The name of the key pair."
}
