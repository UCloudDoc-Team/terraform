

# 快速开始

## 快速链接

**[官方产品文档地址](https://docs.ucloud.cn/compute/terraform/index)** (本文档)

对于产品有一个大致的了解

**[官方参考文档地址](https://www.terraform.io/docs/providers/ucloud/)**

用于查询 UCloud Terraform Provider 的各种参数

**[开源仓库地址](https://github.com/terraform-providers/terraform-provider-ucloud)**

欢迎对 UCloud Provider 贡献代码，成为 Contributor！

## 环境配置

**安装 Terraform**

- 打开 [官方安装文档](https://learn.hashicorp.com/terraform/getting-started/install.html)
- 按照文档安装 [Terraform CLI 工具](https://docs.ucloud.cn/developer/cli/intro) (可选)

**配置默认用户**

- 设置秘钥 UCLOUD\_PUBLIC\_KEY 和 UCLOUD\_PRIVATE\_ KEY 为全局环境变量（推荐）, 或在 HCL 文件中显式指定 public\_key 和 private\_key 参数。
- 如果是子账号，应配置项目ID UCLOUD\_PROJECT\_ID 为全局环境变量 (推荐)，或在 HCL 文件中显式指定 project\_id 参数。

## 编写 HCL 文件

让我们以初始化一个主机为目标，首先创建一个干净的空文件夹作为工作区，并且换到该目录下，编写一个 HCL 规格文件(eg：main.tf )，如下：

```tf
# 配置 UCloud 为 terraform provider
provider "ucloud" {
  region   = "cn-bj2"
}

# 查询指定可用区中的主机镜像
data "ucloud_images" "default" {
  availability_zone = "cn-bj2-05"
  name_regex        = "^CentOS 7.[1-2] 64"
  image_type        = "base"
}

# 创建一台 UCloud 云主机
resource "ucloud_instance" "example" {
    availability_zone = "cn-bj2-05"
    image_id          = "${data.ucloud_images.default.images.0.id}"
    instance_type     = "n-standard-1"
    root_password     = "UCloud_2018"
    name              = "tf-instance-example"
}
```

除了自己编写 HCL 规格文件,还可以将 [代码仓库](https://github.com/terraform-providers/terraform-provider-ucloud/tree/master/examples) 中的 example 拷贝进来，完成相应的部署。

## 初始化编排工具

在当前目录下执行  terraform init  命令，初始化工作区：

```
Initializing provider plugins...

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```

## 查看编排计划（可选）

在当前目录下执行  terraform plan  命令，查看编排计划：

```
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.

data.ucloud_images.default: Refreshing state...

------------------------------------------------------------------------

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  + ucloud_instance.example
      id:                <computed>
      auto_renew:        <computed>
      availability_zone: "cn-bj2-05"
      boot_disk_size:    <computed>
      boot_disk_type:    "local_normal"
      charge_type:       "month"
      cpu:               <computed>
      create_time:       <computed>
      data_disk_size:    <computed>
      data_disk_type:    "local_normal"
      disk_set.#:        <computed>
      duration:          "1"
      expire_time:       <computed>
      image_id:          "uimage-eqdgkb"
      instance_type:     "n-standard-1"
      ip_set.#:          <computed>
      memory:            <computed>
      name:              "tf-instance-example"
      remark:            <computed>
      root_password:     <sensitive>
      security_group:    <computed>
      status:            <computed>
      subnet_id:         <computed>
      tag:               <computed>
      vpc_id:            <computed>


Plan: 1 to add, 0 to change, 0 to destroy.
------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.
```

## 执行编排计划

在当前目录下执行  terraform apply  命令并确认，执行编排计划（创建一台云主机）：

```
Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

ucloud_instance.example: Creating...
  auto_renew:        "" => "<computed>"
  availability_zone: "" => "cn-bj2-05"
  boot_disk_size:    "" => "<computed>"
  boot_disk_type:    "" => "local_normal"
  charge_type:       "" => "month"
  cpu:               "" => "<computed>"
  create_time:       "" => "<computed>"
  data_disk_size:    "" => "<computed>"
  data_disk_type:    "" => "local_normal"
  disk_set.#:        "" => "<computed>"
  duration:          "" => "1"
  expire_time:       "" => "<computed>"
  image_id:          "" => "uimage-eqdgkb"
  instance_type:     "" => "n-standard-1"
  ip_set.#:          "" => "<computed>"
  memory:            "" => "<computed>"
  name:              "" => "tf-instance-example"
  remark:            "" => "<computed>"
  root_password:     "<sensitive>" => "<sensitive>"
  security_group:    "" => "<computed>"
  status:            "" => "<computed>"
  subnet_id:         "" => "<computed>"
  tag:               "" => "<computed>"
  vpc_id:            "" => "<computed>"
ucloud_instance.example: Still creating... (10s elapsed)
ucloud_instance.example: Still creating... (20s elapsed)
ucloud_instance.example: Creation complete after 22s (ID: uhost-kayyin)

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
```

如果执行编排计划失败，有多种可能原因导致:

- 网络原因，则重试几次即可；
- 编排计划内容字段校验错误，则按照要求修改HCL文件（即 .tf 文件），可参考[UCloud Terraform 官方文档](https://www.terraform.io/docs/providers/ucloud/index.html)；
- 资源不足，可切换地域或可用区；
- 其他原因，可查询常见问题，或联系技术支持。

## 查看编排资源状态（可选）

执行  terraform show  命令，查看编排资源状态（查看云主机状态）：

```
data.ucloud_images.default:
  availability_zone = cn-bj2-05
  image_type = base
  name_regex = ^CentOS 7.[1-2] 64
  images.0.id = uimage-eqdgkb
  ...
ucloud_instance.example:
  id = uhost-kayyin
  auto_renew = true
  availability_zone = cn-bj2-05
  boot_disk_size = 20
  boot_disk_type = local_normal
  charge_type = month
  cpu = 1
  create_time = 2018-12-19T16:55:21+08:00
  data_disk_type = local_normal
  disk_set.# = 1
  disk_set.0.id = 3ff13c07-f368-4a08-8236-bde2a54bb36c
  disk_set.0.is_boot = true
  disk_set.0.size = 20
  disk_set.0.type = local_normal
  duration = 1
  expire_time = 2019-01-19T16:55:21+08:00
  image_id = uimage-eqdgkb
  instance_type = n-standard-1
  ip_set.# = 1
  ip_set.0.internet_type = Private
  ip_set.0.ip = 10.42.75.127
  memory = 4096
  name = tf-instance-example
  remark =
  root_password = UCloud_2018
  security_group =
  status = Running
  subnet_id = subnet-hjohfy
  tag = Default
  vpc_id = uvnet-300sly
```

## 销毁编排资源（可选）

如需销毁当前编排资源，执行  terraform destroy  命令并确认，销毁编排资源（删除云主机）：

```
data.ucloud_images.default: Refreshing state...
ucloud_instance.example: Refreshing state... (ID: uhost-kayyin)

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  - ucloud_instance.example


Plan: 0 to add, 0 to change, 1 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

ucloud_instance.example: Destroying... (ID: uhost-kayyin)
ucloud_instance.example: Destruction complete after 7s

Destroy complete! Resources: 1 destroyed.
```
