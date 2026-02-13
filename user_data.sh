#!/bin/bash
# User data script for Amazon Linux EC2 instance

# Update system packages
sudo dnf update -y

# Install common utilities
sudo dnf install -y \
    git \
    wget \
    curl \
    vim \
    htop \
    tree

# Install Docker (optional - uncomment if needed)
# sudo dnf install -y docker
# sudo systemctl start docker
# sudo systemctl enable docker
# sudo usermod -aG docker ec2-user

# Install AWS CLI v2 (already included in Amazon Linux 2023)
# aws --version

# Set timezone (adjust as needed)
sudo timedatectl set-timezone UTC

# Create a sample file to verify user data executed
echo "User data script executed successfully at $(date)" > /tmp/userdata.log

# Optional: Install and configure a web server
# sudo dnf install -y httpd
# sudo systemctl start httpd
# sudo systemctl enable httpd
# echo "<h1>Hello from Amazon Linux!</h1>" | sudo tee /var/www/html/index.html
