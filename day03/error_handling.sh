#!/bin/bash


<< task 
Deploy a Django app
task



code_clone() {
  echo "****** Cloning the Django app... ******"

  if [ -d "django-notes-app" ]; then
    echo "The code directory already exists, skipping clone."
  else
    git clone https://github.com/LondheShubham153/django-notes-app.git
  fi
}

install_requirements() {
  echo "****** Installing dependencies ******"
  sudo apt-get update -y
  sudo apt-get install docker.io nginx -y
  echo "****** Dependencies installed successfully ******"
}

required_restarts() {
  echo "****** Enabling and starting services ******"
  sudo systemctl start docker
  sudo systemctl enable docker
  sudo systemctl start nginx
  sudo systemctl enable nginx
}

deploy() {
  echo "****** Deploying Django app in Docker ******"
  cd django-notes-app || { echo "App directory not found"; exit 1; }

  # If Dockerfile not present, print message
  if [ ! -f Dockerfile ]; then
    echo "Dockerfile not found in the directory."
    exit 1
  fi

sudo  docker build -t notes-app .
sudo docker run -d -p 8000:8000 notes-app
}



main() {
  echo "****** Deployment Started ******"
  code_clone
  install_requirements
  required_restarts
  deploy
  echo "****** Deployment Completed ******"
}

main






