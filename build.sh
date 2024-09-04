#!/bin/sh

docker build -f Dockerfile-2.414.3-lts-jdk11 -t jenkins-docker:2.414.3-lts-jdk11 .
docker build -f Dockerfile-2.462.1-lts-jdk11 -t jenkins-docker:2.462.1-lts-jdk11 .
docker build -f Dockerfile-2.462.1-lts-jdk17 -t jenkins-docker:2.462.1-lts-jdk17 .

