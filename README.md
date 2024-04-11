# jenkins-image

### What does this image add?
 - Healthcheck
 - Everything needed to install the docker-cli


### Notes

This image is configured to install the docker-cli; however, it doesn't actually perform the installation. The version of docker-cli you aim to install
should match the version of Docker present on the host machine. Therefore, the docker-cli ought to be installed after deployment. For guidance, refer
to the run.sh script.

### Known Issues:
 - The container is using the root user. I haven’t figured out how to use the host’s dockerd socket with the `jenkins` user.

