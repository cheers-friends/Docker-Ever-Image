#!/bin/bash

for container in `docker ps -q`; do 
  # show the name of the container
  test=$(docker inspect --format='{{.Config.Image}}' $container);
  #echo $image
  echo $test
  # run the command (date in the case)
  docker image pull $test;
done