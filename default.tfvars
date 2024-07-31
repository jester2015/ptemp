proxmox_api_url = ""  # Your Proxmox IP Address Commented out as we are using the environment variable
proxmox_api_token_id = ""  # API Token ID Commented out as we are using the environment variable
target_node="" # Replace with node name (Default is pve)
name="" # Replace with VM name (Make sure this name is unique)
cores=4 # Number of cores (Default is 2)
memory=8000 # Memory in MB (Default is 4096)
disk_size=75 # Disk size in GB (Default is 20G)
network_tag = 5
clone = "" # Replace with template name (Default is UbuntuTemp) Make sure this template exists
ipconfig0="" # Replace with new IP (Replace with requested IP)
cloud_init_user="" # Replace with new username if needed (Default is absentadmin)
proxmox_api_token_secret = ""
#vmid = -1  # VM ID (Default is -1 - Terraform will set this)
description = "" # Description of VM (Default is Terraform Test VM) Using Markdown if necessary
tags = "" # Comma separated list of tags
#pool = "Terraform" Make sure this pool exists
cpu_model = ""
cloud_init_sshkeys = ""
servers = [
  {
    name = "k3sp-"
    ipaddress = "value2"
  },
  {
    name = "value3"
    ipaddress = "value4"
  },
  {
    name = "value5"
    ipaddress = "value6"
  }
]