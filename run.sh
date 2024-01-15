#!/bin/bash

docker run \
  --name "Jenkins" \
  --detach \
  --privileged \
  --publish "8080:8080" \
  --publish "50000:50000" \
  --volume "$PWD/jenkins-data:/var/jenkins_home" \
  --volume "/var/run/docker.sock:/var/run/docker.sock" \
  isaiah/jenkins
