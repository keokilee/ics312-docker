# ICS 312 Docker Container

Bare bones container for writing NASM. Based off of kellyi/nasm-gcc-container and vladfau/nasm32.

## Requirements

* Docker or Docker Desktop
* Docker Compose (should be included by default with Docker)

## Setup

Install Docker or Docker Desktop and ensure that it is running. Build the image by running the following (note that this may take some time):

```
docker-compose build
```

## Development

Write your code in the attached `src` folder. This folder is mounted inside of the container, so you can write your code in the text editor of your choice and it'll be available in the container. To run the shell, use the following command:

```
docker-compose run ics312
```

To compile and run the example code, run the following inside of the container.

```
nasm -felf64 helloworld.asm -o helloworld.o
ld -o helloworld.out helloworld.o
chmod u+x helloworld.out
./helloworld.out
```
