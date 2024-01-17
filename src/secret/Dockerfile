FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install iputils-ping -y
RUN apt-get install curl -y
RUN echo "hello from the container" > secret.txt
RUN chmod +r secret.txt
