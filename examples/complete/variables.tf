#####################################
# Elastic Cloud Phone (ECP) Key Pair
#####################################
variable "public_key_body" {
  description = "The public key body."
  type        = string
  default     = "ssh-rsa AAAAB3Nza12345678qwertyuudsfsg"
}

#####################################
# Elastic Cloud Phone (ECP) Instance
#####################################
variable "instance_name" {
  description = "The name of the instance."
  type        = string
  default     = "tf-test-ecp"
}

variable "description" {
  description = "The description of the instance."
  type        = string
  default     = "tf-test-ecp"
}

variable "vnc_password" {
  description = "Cloud mobile phone VNC password. The password must be six characters in length and must contain only uppercase, lowercase English letters and Arabic numerals."
  type        = string
  default     = "Cp1234"
}

variable "payment_type" {
  description = "The payment type. Valid values: PayAsYouGo,Subscription."
  type        = string
  default     = "PayAsYouGo"
}

variable "status" {
  description = "Instance status. Valid values: Running, Stopped."
  type        = string
  default     = "Running"
}