resource "alicloud_ecp_key_pair" "key" {
  count           = var.create_key_pair ? 1 : 0
  key_pair_name   = var.key_pair_name
  public_key_body = var.public_key_body
}

resource "alicloud_ecp_instance" "instance" {
  count             = var.create_instance ? 1 : 0
  instance_name     = var.instance_name
  description       = var.description
  key_pair_name     = local.this_key_pair_name
  security_group_id = var.security_group_id
  vswitch_id        = var.vswitch_id
  image_id          = var.image_id
  instance_type     = var.instance_type
  vnc_password      = var.vnc_password
  status            = var.status
}

