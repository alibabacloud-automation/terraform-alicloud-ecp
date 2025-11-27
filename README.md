Terraform module which creates and manages cloud phone instances and configures keys with `ECP` on Alibaba Cloud

terraform-alicloud-ecp
=====================================================================

English | [简体中文](https://github.com/terraform-alicloud-modules/terraform-alicloud-ecp/blob/main/README-CN.md)

This module is used to create and manage cloud phone instances and configures keys with `ECP` on Alibaba Cloud.

These types of resources are supported:

* [alicloud_ecp_instance](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/ecp_instance)
* [alicloud_ecp_key_pair](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/ecp_key_pair)

## Usage

<div style="display: block;margin-bottom: 40px;"><div class="oics-button" style="float: right;position: absolute;margin-bottom: 10px;">
  <a href="https://api.aliyun.com/terraform?source=Module&activeTab=document&sourcePath=terraform-alicloud-modules%3A%3Aecp&spm=docs.m.terraform-alicloud-modules.ecp&intl_lang=EN_US" target="_blank">
    <img alt="Open in AliCloud" src="https://img.alicdn.com/imgextra/i1/O1CN01hjjqXv1uYUlY56FyX_!!6000000006049-55-tps-254-36.svg" style="max-height: 44px; max-width: 100%;">
  </a>
</div></div>

```hcl
module "example" {
  source            = "terraform-alicloud-modules/ecp/alicloud"
  #alicloud_ecp_key_pair
  create_key_pair   = true
  key_pair_name     = "tf-test-ecp"
  public_key_body   = "ssh-rsa AAAAB3Nza12345678qwertyuudsfsg"
  #alicloud_ecp_instance
  create_instance   = true
  instance_name     = "tf-test-ecp"
  description       = "tf-test-ecp"
  instance_type     = "ecp.ce.large"
  image_id          = "your-image-id"
  security_group_id = "sg-abc12345"
  vswitch_id        = "vsw-abc12345"
  vnc_password      = "Cp1234"
}
```

## Examples

* [complete example](https://github.com/terraform-alicloud-modules/terraform-alicloud-ecp/tree/main/examples/complete)

## Notes

* This module using AccessKey and SecretKey are from `profile` and `shared_credentials_file`. If you have not set them
  yet, please install [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) and configure it.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | > = 0.13 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | > = 1.58.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | > = 1.58.0 |

## Submit Issues

If you have any problems when using this module, please opening
a [provider issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new) and let us know.

**Note:** There does not recommend opening an issue on this repo.

## Authors

Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com).

## License

MIT Licensed. See LICENSE for full details.

## Reference

* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs)
