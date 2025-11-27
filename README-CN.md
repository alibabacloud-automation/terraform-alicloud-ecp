Terraform module which creates and manages cloud phone instances and configures keys with `ECP` on Alibaba Cloud.

terraform-alicloud-ecp
=====================================================================

[English](https://github.com/terraform-alicloud-modules/terraform-alicloud-ecp/blob/main/README.md) | 简体中文

本 Module 用于在阿里云的 VPC 下创建和管理云手机实例以及为其配置密钥，包含：`ECP`。

本 Module 支持创建以下资源:

* [alicloud_ecp_instance](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/ecp_instance)
* [alicloud_ecp_key_pair](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/ecp_key_pair)

## 用法

<div style="display: block;margin-bottom: 40px;"><div class="oics-button" style="float: right;position: absolute;margin-bottom: 10px;">
  <a href="https://api.aliyun.com/terraform?source=Module&activeTab=document&sourcePath=terraform-alicloud-modules%3A%3Aecp&spm=docs.m.terraform-alicloud-modules.ecp" target="_blank">
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

## 示例

* [ECP 完整示例](https://github.com/terraform-alicloud-modules/terraform-alicloud-ecp/tree/main/examples/complete)

## 注意事项

* 本 Module 使用的 AccessKey 和 SecretKey 可以直接从 `profile` 和 `shared_credentials_file`
  中获取。如果未设置，可通过下载安装 [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) 后进行配置.

## 要求

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | > = 0.13 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | > = 1.58.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | > = 1.58.0 |

## 提交问题

如果在使用该 Terraform Module
的过程中有任何问题，可以直接创建一个 [Provider Issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new)，我们将根据问题描述提供解决方案。

**注意:** 不建议在该 Module 仓库中直接提交 Issue。

## 作者

Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com).

## 许可

MIT Licensed. See LICENSE for full details.

## 参考

* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs)
