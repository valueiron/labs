# Optional: generate Ansible inventory file for playbooks
# create_ansible_inventory_file = true
# ansible_inventory_file_path   = "inventory/hosts"

vm1_config = {
  name          = "web-server-vm"
  clone         = "ubuntu2404"
  instance_size = "small"
  storage       = "local-lvm"
  target_node   = "pve1"
  tag           = 100
  ipconfig0     = "ip=10.0.0.10/24,gw=10.0.0.1"
  nameserver    = "1.1.1.1,8.8.8.8"
  tags          = "dev,web"
  notes         = "Web Server Demo"
  #additional_disks = [{ type = "scsi", slot = 2, storage = "local-lvm", size = "10G", ssd = true }]
}
