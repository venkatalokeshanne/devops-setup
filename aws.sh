#!/bin/bash

echo "Installing AWS CLI..."

# Install dependencies
echo "Installing required packages..."

sudo apt-get update -y
sudo apt-get install -y curl unzip

# Download and install the AWS CLI
echo "Downloading AWS CLI..."

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# Verify the installation
aws --version