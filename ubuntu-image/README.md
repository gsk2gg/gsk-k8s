# Docker Image Build

## Build docker image with name & tag 'ubuntu:latest'
docker build -t ubuntu:latest .

## To run image and check changes
docker run -it ce4ef30c343d

## Remove docker image forcefully
docker image rm -f 919e5e8c2ede 3b2d27eee978