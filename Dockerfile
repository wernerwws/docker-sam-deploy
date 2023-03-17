FROM node:18.15.0-bullseye-slim

RUN apt update
RUN apt install -y jq python3-pip
RUN pip3 install --upgrade aws-sam-cli
RUN pip3 install --upgrade awscli

COPY --from=stripe/stripe-cli:v1.5.8 /bin/stripe /bin/stripe