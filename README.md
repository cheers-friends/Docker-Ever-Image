# Docker-Ever-Image
A collection of scripts that ensure your docker images don't go stale and get deleted in Docker Hub

Requires the following:

  1.) Crontab
  2.) Docker
  3.) The user running the scripts must be part of the docker group to prevent the requirement of "sudo" before every command
    https://docs.docker.com/engine/install/linux-postinstall/
      #Create docker group if not already created
      $ sudo groupadd docker
      #Add current user to docker group
      $ sudo usermod -aG docker $USER
      #Prevents having to physically logout and back in for changes to take effect
      $ newgrp docker
      
 Run Docker-EverImage.sh
