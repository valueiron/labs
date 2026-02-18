# ------------------------------------------------------------------------------
# Ansible inventory (shared data for output + local file)
# ------------------------------------------------------------------------------

locals {
  ansible_hosts = [
    {
      name         = module.vm1.vm_name
      ansible_host = module.vm1.vm_ip
      groups       = module.vm1.vm_tags != null && module.vm1.vm_tags != "" ? split(",", replace(module.vm1.vm_tags, " ", "")) : []
    }
  ]
  distinct_groups   = distinct(flatten([for h in local.ansible_hosts : h.groups]))
  inventory_all     = "[all]\n${join("\n", [for h in local.ansible_hosts : "${h.name} ansible_host=${h.ansible_host}"])}"
  inventory_groups  = join("\n", [for g in local.distinct_groups : "\n[${g}]\n${join("\n", [for h in local.ansible_hosts : h.name if contains(h.groups, g)])}"])
  inventory_content = "${local.inventory_all}${local.inventory_groups}\n"
}
