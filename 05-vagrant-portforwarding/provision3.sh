#!/bin/bash

sudo cp /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bak

# Create a new repo file with Vault URLs
echo "Creating a new CentOS-Base.repo..."
sudo bash -c 'cat > /etc/yum.repos.d/CentOS-Base.repo <<EOF
[base]
name=CentOS-7 - Base
baseurl=http://vault.centos.org/centos/7/os/\$basearch/
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7
enabled=1

[updates]
name=CentOS-7 - Updates
baseurl=http://vault.centos.org/centos/7/updates/\$basearch/
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7
enabled=1

[extras]
name=CentOS-7 - Extras
baseurl=http://vault.centos.org/centos/7/extras/\$basearch/
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7
enabled=1
EOF'

# Clean and update yum
echo "Cleaning yum cache..."
sudo yum clean all

echo "Rebuilding yum cache..."
sudo yum makecache

# Update yum packages
echo "Updating yum packages..."

# Update yum packages
echo "Updating yum packages..."
sudo yum update -y

# Install Apache (httpd)
echo "Installing Apache (httpd)..."
sudo yum install -y httpd

# Start Apache service
echo "Starting Apache..."
sudo systemctl start httpd

# Enable Apache to start on boot
echo "Enabling Apache to start on boot..."
sudo systemctl enable httpd

# Create a simple webpage
echo "Creating index.html..."
echo "<h1>Welcome to My Vagrant Apache Server!</h1>" > /var/www/html/index.html

# Restart Apache to apply changes
echo "Restarting Apache..."
sudo systemctl restart httpd

echo "Provisioning complete!"

