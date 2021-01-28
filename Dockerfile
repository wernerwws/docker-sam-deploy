FROM node:12.20.1-alpine3.12

RUN apk -v --no-cache --update add \
bash \
gcc \
jq \
musl-dev \
py3-pip \
python3 \
python3-dev

RUN python3 -m ensurepip --upgrade && pip3 install --upgrade pip
RUN pip3 install --upgrade aws-sam-cli awscli

RUN apk del python3-dev gcc musl-dev

COPY --from=stripe/stripe-cli:v1.5.8 /bin/stripe /bin/stripe