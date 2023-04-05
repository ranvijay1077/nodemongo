#!/bin/bash
#installing jenkins 
echo "welcome to jenkins installation"

#install curl 
sudo apt-get install curl

#step 1
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
    /usr/share/keyrings/jenkins-keyring.asc > /dev/null

#adding repo
echo "adding repository"


  echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
    https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
    /etc/apt/sources.list.d/jenkins.list > /dev/null

#installing 

  sudo apt-get update
  sudo apt-get install fontconfig openjdk-11-jre
  sudo apt-get install jenkins

echo "welcome to jenkins enjoy CI/CD"

