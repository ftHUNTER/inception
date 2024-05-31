#!/bin/bash

# Stop Docker services
sudo systemctl stop docker

# Uninstall Docker packages
sudo apt-get purge docker-ce docker-ce-cli containerd.io
sudo apt-get autoremove -y --purge docker-ce docker-ce-cli containerd.io

# Remove Docker directories
sudo rm -rf /var/lib/docker /var/lib/containerd

# Remove Docker configuration files
sudo rm -rf /etc/docker /etc/systemd/system/docker.service.d
sudo rm /etc/systemd/system/multi-user.target.wants/docker.service
sudo rm /etc/systemd/system/sockets.target.wants/docker.socket
sudo rm /lib/systemd/system/docker.service /lib/systemd/system/docker.socket
sudo systemctl daemon-reload
sudo systemctl reset-failed

# Remove Docker Compose (if installed)
sudo rm /usr/local/bin/docker-compose

# Remove Docker group
sudo groupdel docker

echo "Docker and all related components have been successfully removed."

