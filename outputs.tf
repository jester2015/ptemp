output "vm_id" {
  description = "The VM ID Number."
  value       = proxmox_vm_qemu.virtual-machine.*.id
}

output "vm_name" {
  description = "The VM name."
  value       = proxmox_vm_qemu.virtual-machine.*.name
}
output "ip-address" {
  description = "DHCP IP Address"
  value       = proxmox_vm_qemu.virtual-machine.*.default_ipv4_address
}

output "clone" {
  description = "Template name that this VM was cloned from."
  value       = proxmox_vm_qemu.virtual-machine.*.clone
}