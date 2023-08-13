# Docker Image Build

## Build docker image with name & tag 'ubuntu:latest'
docker build -t ubuntu:latest .

## To run image and check changes
docker run -it ce4ef30c343d

## Remove docker image forcefully
docker image rm -f 919e5e8c2ede 3b2d27eee978

## To export Images files & directories to Local
docker build --output type=local,dest=out .
docker build --output type=tar,dest=out.tar .

## Run docker image in detached mode (backgroud)
docker run -d -p 8080:8080 tomcat-img

## To access running Docker container
docker exec -it d12d16d54771 /bin/bash

## Docker push image
docker tag tomcat-img:latest gsk2gg/tomcat-img:latest
docker push gsk2gg/tomcat-img:latest