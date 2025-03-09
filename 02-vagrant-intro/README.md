# Basic usage

1. create a vm
2. start a vm
3. connect to a vm
4. stop a vm
5. destroy a vm

## Steps

1. install vagrant
2. install virtualbox
3. vagrant init
4. search for existant boxes in this [https://portal.cloud.hashicorp.com/vagrant/discover]
5. configure the vagrantfile
6. vagrant validate
7. vagrant up
8. vagrant ssh

## box commands

vagrant box : 
list
add <box-name>
update <box-name>
remove <box-name>
prune
outdated

## vagrant commands

vagrant : 
- `init` : Initializes a new Vagrant environment. Creates a Vagrantfile in the current directory.
- `validate` : Checks the Vagrantfile for syntax errors.
- `up` : Starts and provisions the VM (if it’s not already running). If the VM doesn’t exist, it downloads the box, creates, and starts it.
- `ssh` : Connects to the VM using SSH.
- `suspend` : Pauses the VM (saves the current state).
- `resume` : Resumes a suspended VM.
- `reload` : Restarts the VM and re-applies provisioning. Useful when changing the Vagrantfile (e.g., updating RAM, CPU, networking).
- `halt` : Gracefully shuts down the VM. Similar to shutting down a computer properly (data is saved).
- `destroy` : Deletes the VM completely. Removes everything (OS, files, configurations, etc.).
- `provision` :  Runs the provisioning scripts again without restarting the VM. Useful if you've updated provisioning scripts (Ansible, Shell, etc.).
- `status` :  Shows the current status of the VM.
- `global-status` : Lists all VMs running across different directories.
- `snapshot` : reates or restores a VM snapshot (save/restore state).

## What is Provisioning in Vagrant?
Provisioning is the process of automatically setting up a virtual machine (VM) with the necessary configurations, software, and dependencies after it is created.

## Why is Provisioning Important?
Instead of manually installing and configuring software inside the VM, provisioning automates the process, making it:
- Faster : No need for manual setup each time.
- Consistent : Ensures all VMs are set up the same way.
- Reusable : The setup can be shared across teams.