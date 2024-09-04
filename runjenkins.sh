#!/bin/sh

docker network create jenkins || true

docker kill jenkins || true
docker rm jenkins || true

# jenkins-docker:2.414.3-lts-jdk11
# jenkins-docker:2.462.1-lts-jdk11
# jenkins-docker:2.462.1-lts-jdk17
docker run --name jenkins --restart=on-failure --detach \
  --network jenkins --env DOCKER_HOST=tcp://docker:2376 \
  --env DOCKER_CERT_PATH=/certs/client --env DOCKER_TLS_VERIFY=1 \
  --publish 8080:8080 --publish 50000:50000 \
  --volume /media/data/devops/jenkins/jenkins-data:/var/jenkins_home \
  --volume jenkins-docker-certs:/certs/client:ro \
  jenkins-docker:2.462.1-lts-jdk11

