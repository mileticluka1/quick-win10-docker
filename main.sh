#!/bin/bash

# Pull the latest Windows 10 base image from the Docker registry.
docker pull mcr.microsoft.com/windows/servercore:ltsc2019

# Create a new Docker container based on the Windows 10 base image.
docker create --name my-windows-container -it mcr.microsoft.com/windows/servercore:ltsc2019

# Start the Docker container.
docker start my-windows-container

# Connect to the Docker container using Remote Desktop Protocol (RDP).
docker exec -it my-windows-container powershell.exe
