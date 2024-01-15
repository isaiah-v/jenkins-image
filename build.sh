#!/bin/bash

docker build --tag isaiah/jenkins:latest .
docker tag isaiah/jenkins:latest isaiah/jenkins:2.440-24.0.7
