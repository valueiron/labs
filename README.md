# 🧪 Infrastructure Learning Labs

This repository contains official and community-contributed hands-on labs for infrastructure, DevOps, and cloud engineering.  
Labs are designed to be reproducible, automated, and platform-integrated using Terraform, Ansible, and browser-based terminals/desktops.

---

## 📁 Repository Structure

```txt
labs/
  official/        # Maintained by core team
    community/       # Community contributed labs
      templates/       # Starter templates for authors

      docs/              # Lab authoring documentation
      scripts/           # CI utilities and validation tooling
```

## 🧱 Lab Directory Structure

```txt
lab-name/
  lab.yaml                # Machine-readable lab definition
  instructions.md         # Student-facing markdown guide
  metadata.json            # UI metadata (difficulty, tags, duration)

  terraform/               # Infrastructure provisioning code
    proxmox/
    aws/
    azure/
    gcp/

  ansible/                 # Post-provision configuration
    linux/
    windows/

  validation/              # Autograding scripts
    check.sh
    check.ps1

  ui/                      # UI helper files
    commands.json           # Click-to-copy terminal commands
    hints.json

```

## 🧠 Key File Purposes

```
lab.yaml

Authoritative machine-readable lab definition.

instructions.md

Student-facing markdown lab guide.

metadata.json

UI hints (difficulty, tags, duration, prerequisites).

terraform/

Cloud + Proxmox provisioning code.

ansible/

Post-provision configuration (Linux & Windows).

validation/

Autograding scripts.

ui/commands.json

Clickable copy-paste commands for the terminal pane.
```
