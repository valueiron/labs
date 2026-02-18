variable "pm_api_url" {
  description = "Proxmox API URL"
  type        = string
}

variable "pm_api_token_id" {
  description = "Proxmox API Token ID"
  type        = string
}

variable "pm_api_token_secret" {
  description = "Proxmox API Token Secret"
  type        = string
  sensitive   = true
}

variable "pm_tls_insecure" {
  description = "proxmox tls insecure"
  type        = bool
  default     = true
}

variable "ciuser" {
  description = "Cloud-init username"
  type        = string
}

variable "cipassword" {
  description = "Cloud-init password"
  type        = string
  sensitive   = true
}

variable "sshkeys" {
  description = "Newline-delimited SSH public keys"
  type        = string
}

variable "vm1_config" {
  description = "VM1 config"
  type        = any
}
