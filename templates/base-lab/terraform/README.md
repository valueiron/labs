# Demo VM IAC

Create a .env file with the following to pass the variables into terraform

```
TF_VAR_pm_api_url=https://proxmoxhost:8006
TF_VAR_pm_api_token_id=API_TOKEN_ID
TF_VAR_pm_api_token_secret=API_TOKEN_SECRET
TF_VAR_ciuser=USERNAME
TF_VAR_cipassword=PASSWORD
TF_VAR_sshkeys=SSH_KEYS
```

## Option A - JSON for dynamic inventory

`terraform output -json ansible_inventory`

## Option B - Use IP/host list

```
terraform output -raw vm1_ip      # single host
terraform output -json ansible_host_list
```

## Enable a local ansible inventory file to be created via terraform

```
create_ansible_inventory_file = true
ansible_inventory_file_path   = "hosts"   # or e.g. "../ansible/hosts"
```

## Running ansible via hosts file

```
ansible-playbook -i hosts main.yml
# or use the output path
ansible-playbook -i $(terraform output -raw ansible_inventory_file_path) main.yml
```
