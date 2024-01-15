# jenkins-image
A jenkins images that can use docker

Creates a docker image with Jenkins and the Docker CLI

Known Issues:
 - The container is using the root user. I haven’t figured out how to use the host’s dockerd socket with the `jenkins` user.

