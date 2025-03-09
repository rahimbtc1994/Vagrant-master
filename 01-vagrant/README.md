# Concepts

## What is a VM 
is a software-based computer that runs inside another physical computer (called the host). It behaves like a real computer, with its own operating system, memory, storage, and applications, but it runs as a program inside the host system.

## What is an Hypervisor & VM platform
1. A hypervisor is software or firmware that creates and manages virtual machines (VMs) on a physical computer. It allows multiple VMs to share the hardware resources (CPU, RAM, disk, network) of a single host system while keeping them isolated from each other.

2. A VM platform (virtualization software) is a software solution that enables the creation, management, and operation of virtual machines (VMs) on a single physical computer. It allows multiple operating systems (OS) to run on the same hardware by virtualizing system resources like CPU, memory, storage, and networking.

3. The key difference between a hypervisor and a VM platform (virtualization software) lies in their roles:
- A hypervisor is the core technology that enables virtualization by creating and managing virtual machines (VMs).
- A VM platform is a complete software solution that includes the hypervisor along with management tools, interfaces, and additional features for handling VMs.

## What is Vagrant
Vagrant is an open-source tool that helps developers create and manage virtualized development environments efficiently. It provides a simple way to automate the setup of VMs, ensuring that all team members work with the same environment, reducing "works on my machine" problems.

## Why Use Vagrant?
- **Consistency** → Every team member gets the same VM setup.
- **Automation** → No need to manually configure environments.
- **Multi-Platform** → Works with VirtualBox, VMware, Hyper-V, AWS, etc.
- **Fast & Reproducible** → Easily destroy and recreate VMs.

1. provider : A provider is the virtualization platform that Vagrant uses to create and run virtual machines (VMs). It acts as the backend where the VM is hosted.
2. image : A box is a pre-built VM image that Vagrant downloads and uses to create the VM. It serves as the base operating system for your environment.
3. provisioner : A provisioner is a tool that automates the installation of software, updates, and configurations inside the VM after it's created.