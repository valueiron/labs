resource "local_file" "ansible_inventory" {
  count = var.create_ansible_inventory_file ? 1 : 0

  content  = local.inventory_content
  filename = pathexpand(var.ansible_inventory_file_path)
}
