#####################################
# Elastic Cloud Phone (ECP) Key Pair
#####################################
variable "create_key_pair" {
  description = "Controls if ecp key pair should be created"
  type        = bool
  default     = false
}

variable "key_pair_name" {
  description = "The Key Name."
  type        = string
  default     = ""
}

variable "public_key_body" {
  description = "The public key body."
  type        = string
  default     = ""
}

#####################################
# Elastic Cloud Phone (ECP) Instance
#####################################
variable "create_instance" {
  description = "Controls if ecp instance should be created"
  type        = bool
  default     = false
}

variable "instance_name" {
  description = "The name of the instance."
  type        = string
  default     = ""
}

variable "description" {
  description = "The description of the instance."
  type        = string
  default     = ""
}

variable "security_group_id" {
  description = "(Required, ForceNew) The ID of the security group. The security group is the same as that of the ECS instance."
  type        = string
  default     = ""
}

variable "vswitch_id" {
  description = "(Required, ForceNew) The vswitch id."
  type        = string
  default     = ""
}

variable "image_id" {
  description = "(Required, ForceNew) The ID of the image."
  type        = string
  default     = ""
}

variable "instance_type" {
  description = "(Required, ForceNew) Instance Type."
  type        = string
  default     = ""
}

variable "payment_type" {
  description = "The payment type.Valid values: PayAsYouGo,Subscription."
  type        = string
  default     = "PayAsYouGo"

  validation {
    condition     = contains(["PayAsYouGo", "Subscription"], var.payment_type)
    error_message = "Allowed values are PayAsYouGo or Subscription."
  }
}

variable "vnc_password" {
  description = "Cloud mobile phone VNC password. The password must be six characters in length and must contain only uppercase, lowercase English letters and Arabic numerals."
  type        = string
  default     = ""
}

variable "status" {
  description = "Instance status. Valid values: Running, Stopped."
  type        = string
  default     = "Running"

  validation {
    condition     = contains(["Running", "Stopped"], var.status)
    error_message = "Allowed values are Running or Stopped."
  }
}