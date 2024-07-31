variable "proxmox_api_token_id" {
  type = string
  description = "API Token ID for Proxmox"
}

variable "proxmox_api_token_secret" {
  type = string
  description = "API Token Secret for"
}

variable "proxmox_api_url" {
  type = string
  description = "Proxmox URL (https://<Proxmox-IP>:8006/api2/json/)"
}

#Proxmox VM Details
variable "target_node" {
  type = string
  description = "Node Name the VM should be on"
}
variable "clone" {
  type = string
  description = "Template to Clone"
}

# Virtual Machine Identification
variable "vmid" {
  type = number
  default = 0
}



variable "pool" {
  type = string
  default = "Unassigned"
}
  


# VM Specs Information
variable "cores" {
  type = number
  default = 2
}
variable "cpu_model" {
  type = string
  default = "host"
  description = "CPU type"
}

variable "boot" {
  type = string
  default = "order=scsi0;net0"
  description = "Boot Order"
}
variable "memory" {
  type = number
  default = 1024
}

# Networking


variable "bridge" {
  type = string
  default = "vmbr0"
}

variable "network_tag" {
  type = number
  default = 0
}
variable "network_model" {
  type = string
  default = "virtio" 
}

# Disk Information

variable "disk_size" {
  type = string
  default = "10G"
}

variable "storage_name" {
  type = string
}




# Cloud Init Information
variable "cloud_init_user" {
  type = string
}


variable "cloud_init_sshkeys" {
  type = string
  sensitive = true
  default = ""
}

variable "onboot" {
  type = bool
  default = true
  description = "Auto Boot"
}


variable "context" {
  description = <<-EOF
Receive contextual information. When Walrus deploys, Walrus will inject specific contextual information into this field.

Examples:
context:
  project:
    name: string
    id: string
  environment:
    name: string
    id: string
  resource:
    name: string
    id: string
EOF
  type        = map(any)
  default     = {}
}


variable "servers" {
  description = "List all the servers you need here"
  type = list(object({
    name    = string
    ipaddress    = string
    description = string
    tags = string
  }))
  default = []
}

