# Purpose
Docker image to run Myth security analysis tool for Ethereum contracts
It contains the following versions:
* Ubuntu 16.04 xenial
* Python3: 3.5.2
* mythril version: 0.8.6
* solc Version: 0.4.19+commit.c4cbbb05.Linux.g++


# Updating and publishing the container
If a new version of  any of the installed packages is published in the Ubuntu repositories and you want to update it,
just take the docker file and build a new image.
If want to use specific versions of mythril, solc or python3 (3.5 or higher needed for mythril) you'll need to change the
Dockerfile to accomodate your needs.


## Dockerhub

The image can be found in Dockerhub: [rvelaz/mythril-ci](https://hub.docker.com/r/rvelaz/mythril-ci/)

## Building the image
Assuming the Dockerfile is in the directory where you are going to run the docker command from:

```
$ docker build -t image_name:tag .
```

e.g.
```
$ docker build -t mythril-ci:0.2.0 .
```

## Publish your image to Docker hub

Login to docker hub:
```
$ docker login
```

```
$ docker push <dockerhub-user>/mythril-ci:<tag>
```
## Running Mythril analysis

To run Mythril analysis on the file *origin.sol* and assuming that the file is in the current directory:
```
docker run -v $PWD:/tmp mythril-ci:0.2.0 myth -x /tmp/origin.sol
```
