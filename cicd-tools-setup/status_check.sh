#!/bin/bash

if [[ $(docker ps -q) ]]; then
  echo "Containers are still running."
else
  echo "No running containers."
fi

if [[ $(docker network ls -q) ]]; then
  echo "Docker networks exist."
else
  echo "No Docker networks."
fi

if [[ $(docker volume ls -q) ]]; then
  echo "Docker volumes exist."
else
  echo "No Docker volumes."
fi
