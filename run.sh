#!/bin/bash

# Create and run the container
docker run \
  --name "Jenkins" \
  --detach \
  --privileged \
  --publish "8080:8080" \
  --publish "50000:50000" \
  --volume "$PWD/jenkins-data:/var/jenkins_home" \
  --volume "/var/run/docker.sock:/var/run/docker.sock" \
  isaiah/jenkins

# Install the docker-cli
export DOCKER_VERSION=$(docker version --format '{{.Client.Version}}')
echo $DOCKER_VERSION

export DOCKER_CLI_PACKAGE=$(docker exec Jenkins apt-cache madison docker-ce-cli | grep -m1 $DOCKER_VERSION | cut -d "|" -f 2 | xargs)
echo $DOCKER_CLI_PACKAGE

docker exec Jenkins apt-get -y install docker-ce-cli=$DOCKER_CLI_PACKAGE
