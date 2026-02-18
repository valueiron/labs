# ------------------------------------------------------------------------------
# VM outputs (from pvevm module)
# When adding more VMs (e.g. module "vm2"), add corresponding outputs and
# append another object to the ansible_inventory list.
# ------------------------------------------------------------------------------

output "vm1_id" {
  description = "VM ID (Proxmox vmid)"
  value       = module.vm1.vm_id
}

output "vm1_name" {
  description = "VM name"
  value       = module.vm1.vm_name
}

output "vm1_ip" {
  description = "VM IPv4 address (for Ansible ansible_host)"
  value       = module.vm1.vm_ip
}

output "vm1_memory" {
  description = "VM memory (MB)"
  value       = module.vm1.vm_memory
}

output "vm1_vcpus" {
  description = "VM vCPU count"
  value       = module.vm1.vm_vcpus
}

output "vm1_notes" {
  description = "VM notes/description"
  value       = module.vm1.vm_notes
}

output "vm1_tags" {
  description = "VM tags (comma-separated)"
  value       = module.vm1.vm_tags
}

output "vm1_nameserver" {
  description = "VM nameserver"
  value       = module.vm1.vm_nameserver
}

# ------------------------------------------------------------------------------
# Ansible inventory
# ------------------------------------------------------------------------------

output "ansible_inventory" {
  description = "List of hosts for Ansible dynamic inventory (terraform output -json ansible_inventory)"
  value       = local.ansible_hosts
}

output "ansible_host_list" {
  description = "Simple list of VM names for Ansible (e.g. limit or group)"
  value       = [for h in local.ansible_hosts : h.name]
}

output "ansible_inventory_file_path" {
  description = "Path to the generated Ansible inventory file (when create_ansible_inventory_file is true)"
  value       = var.create_ansible_inventory_file ? local_file.ansible_inventory[0].filename : null
}
