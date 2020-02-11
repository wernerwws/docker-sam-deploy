FROM node:10.19-buster

RUN apt update
RUN apt install -y python3-pip
RUN pip3 install aws-sam-cli
RUN pip3 install awscli
