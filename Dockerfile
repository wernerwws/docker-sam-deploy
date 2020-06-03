FROM node:12.18-buster

# Add stripe repo
RUN apt-key adv --keyserver hkp://pool.sks-keyservers.net:80 --recv-keys 379CE192D401AB61
RUN echo "deb https://dl.bintray.com/stripe/stripe-cli-deb stable main" | tee -a /etc/apt/sources.list

RUN apt update
RUN apt install -y python3-pip jq stripe
RUN pip3 install aws-sam-cli
RUN pip3 install awscli
