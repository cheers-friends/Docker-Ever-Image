# Docker-Ever-Image
A collection of scripts that ensure your docker images don't go stale and get deleted in Docker Hub under the new policy in which images that don't get pulled in over 6 months get removed.

## Prerequisites
1. Crontab
2. Docker
3. Bash
4. The user running the scripts must be part of the docker group to prevent the requirement of "sudo" before every command
    https://docs.docker.com/engine/install/linux-postinstall/
      - Create docker group if not already created
      - `sudo groupadd docker`
      - Add current user to docker group
      - `sudo usermod -aG docker $USER`
      - Prevents having to physically logout and back in for changes to take effect
      - `newgrp docker`
      
 ### How to use
 Run Docker-EverImage.sh

## How it works
This project consists of two scripts
- Docker-EverImage.sh
- Pull-DockerContainerImages.sh

Docker-EverImage.sh will add Pull-DockerContainerImages.sh to Crontab to run every 5 months. Pull-DockerContainerImages.sh will find all running containers at the time it runs, find the images those containers are dependent on, and then pull those images from Docker Hub.
