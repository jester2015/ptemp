terraform {
  required_version = ">= 0.13.0"
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = "3.0.1-rc1"
    }
  }
}

provider "proxmox" {

  pm_api_url          = var.proxmox_api_url
  pm_api_token_id     = var.proxmox_api_token_id
  pm_api_token_secret = var.proxmox_api_token_secret

  # (Optional) Skip TLS Verification
  pm_tls_insecure = true

}



resource "proxmox_vm_qemu" "virtual-machine" {

  count       = length(var.servers)
  target_node = var.target_node
  name        = var.servers[count.index].name
  desc        = var.servers[count.index].description
  onboot      = var.onboot
  vmid        = var.vmid
  tags  = var.servers[count.index].tags
  clone = var.clone
  # VM System Settingsƒ
  agent = 1

  # VM CPU Settings
  cores   = var.cores
  sockets = 1
  cpu     = var.cpu_model
  boot    = var.boot
  # VM Memory Settings
  memory = var.memory
  # VM Network Settings
  network {
    bridge = var.bridge
    model  = var.network_model
    tag = var.network_tag
  }
 vga {
    type = "std"
  } 
 scsihw = "virtio-scsi-pci"
  disks {
    scsi {
      scsi0 {
        disk {
          storage = var.storage_name
          cache = "writeback"
          iothread = false 
          size = var.disk_size
        }
      }
    }
  }
  os_type = "cloud-init"
  cloudinit_cdrom_storage = var.storage_name
  ipconfig0  = var.servers[count.index].ipaddress
  ciuser     = var.cloud_init_user
  sshkeys = var.cloud_init_sshkeys


}







