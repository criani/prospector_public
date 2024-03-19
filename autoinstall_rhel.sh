#!/bin/bash

# Function to check if a command exists
command_exists() {
    command -v "$@" > /dev/null 2>&1
}

# Check for Docker and install it if not found
if ! command_exists docker; then
    echo "Docker is not installed. Installing Docker..."
    sudo yum install -y yum-utils
    sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
    sudo yum install -y docker-ce docker-ce-cli containerd.io
    sudo systemctl start docker
    sudo systemctl enable docker
fi

# Check for Docker Compose and install it if not found
if ! command_exists docker-compose; then
    echo "Docker Compose is not installed. Installing Docker Compose..."
    sudo curl -L "https://github.com/docker/compose/releases/download/v2.3.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
fi

# Create a directory for prospector and enter it
sudo mkdir -p /opt/prospector
cd /opt/prospector || exit

# Download the docker-compose.yml file from the GitHub repository
echo "Downloading docker-compose.yml from GitHub..."
sudo curl -L "https://raw.githubusercontent.com/criani/prospector_public/main/docker-compose.yml" -o docker-compose.yml

# Run Docker Compose to start the container
echo "Starting Prospector using Docker Compose..."
sudo docker-compose up -d

echo "Prospector is now running on port 5000."
