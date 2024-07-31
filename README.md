## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_proxmox"></a> [proxmox](#requirement\_proxmox) | 3.0.1-rc1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_proxmox"></a> [proxmox](#provider\_proxmox) | 3.0.1-rc1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [proxmox_vm_qemu.virtual-machine](https://registry.terraform.io/providers/telmate/proxmox/3.0.1-rc1/docs/resources/vm_qemu) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_boot"></a> [boot](#input\_boot) | Boot Order | `string` | `"order=scsi0;net0"` | no |
| <a name="input_bridge"></a> [bridge](#input\_bridge) | n/a | `string` | `"vmbr0"` | no |
| <a name="input_clone"></a> [clone](#input\_clone) | Template to Clone | `string` | n/a | yes |
| <a name="input_cloud_init_sshkeys"></a> [cloud\_init\_sshkeys](#input\_cloud\_init\_sshkeys) | n/a | `string` | `""` | no |
| <a name="input_cloud_init_user"></a> [cloud\_init\_user](#input\_cloud\_init\_user) | Cloud Init Information | `string` | n/a | yes |
| <a name="input_cores"></a> [cores](#input\_cores) | VM Specs Information | `number` | `2` | no |
| <a name="input_cpu_model"></a> [cpu\_model](#input\_cpu\_model) | CPU type | `string` | `"host"` | no |
| <a name="input_description"></a> [description](#input\_description) | n/a | `string` | `"Created by Terraform"` | no |
| <a name="input_disk_size"></a> [disk\_size](#input\_disk\_size) | n/a | `string` | `"10G"` | no |
| <a name="input_ipconfig0"></a> [ipconfig0](#input\_ipconfig0) | n/a | `string` | `"ip=dhcp"` | no |
| <a name="input_memory"></a> [memory](#input\_memory) | n/a | `number` | `1024` | no |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | n/a | yes |
| <a name="input_network_model"></a> [network\_model](#input\_network\_model) | n/a | `string` | `"virtio"` | no |
| <a name="input_network_tag"></a> [network\_tag](#input\_network\_tag) | n/a | `number` | `0` | no |
| <a name="input_onboot"></a> [onboot](#input\_onboot) | Auto Boot | `bool` | `true` | no |
| <a name="input_proxmox_api_token_id"></a> [proxmox\_api\_token\_id](#input\_proxmox\_api\_token\_id) | API Token ID for Proxmox | `string` | n/a | yes |
| <a name="input_proxmox_api_token_secret"></a> [proxmox\_api\_token\_secret](#input\_proxmox\_api\_token\_secret) | API Token Secret for | `string` | n/a | yes |
| <a name="input_proxmox_api_url"></a> [proxmox\_api\_url](#input\_proxmox\_api\_url) | Proxmox URL (https://<Proxmox-IP>:8006/api2/json/) | `string` | n/a | yes |
| <a name="input_storage_name"></a> [storage\_name](#input\_storage\_name) | n/a | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `string` | `"terraform,automation"` | no |
| <a name="input_target_node"></a> [target\_node](#input\_target\_node) | Node Name the VM should be on | `string` | n/a | yes |
| <a name="input_vm_pool"></a> [vm\_pool](#input\_vm\_pool) | n/a | `string` | `"Unassigned"` | no |
| <a name="input_vmid"></a> [vmid](#input\_vmid) | Virtual Machine Identification | `number` | `0` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_clone"></a> [clone](#output\_clone) | Template name that this VM was cloned from. |
| <a name="output_ip-address"></a> [ip-address](#output\_ip-address) | DHCP IP Address |
| <a name="output_vm_id"></a> [vm\_id](#output\_vm\_id) | The VM ID Number. |
| <a name="output_vm_name"></a> [vm\_name](#output\_vm\_name) | The VM name. |
