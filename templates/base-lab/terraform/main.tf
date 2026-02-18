module "vm1" {
  source        = "github.com/valueiron/pvevm.git"
  name          = var.vm1_config["name"]
  target_node   = var.vm1_config["target_node"]
  clone         = var.vm1_config["clone"]
  storage       = var.vm1_config["storage"]
  ciuser        = var.ciuser
  cipassword    = var.cipassword
  sshkeys       = var.sshkeys
  tag           = var.vm1_config["tag"]
  ipconfig0     = var.vm1_config["ipconfig0"]
  nameserver    = var.vm1_config["nameserver"]
  tags          = var.vm1_config["tags"]
  notes         = var.vm1_config["notes"]
  instance_size = var.vm1_config["instance_size"]
  #additional_disks = var.vm1_config["additional_disks"]
}
