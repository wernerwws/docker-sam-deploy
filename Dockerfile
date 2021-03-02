FROM lambci/lambda:build-nodejs12.x

RUN yum install -y jq

COPY --from=stripe/stripe-cli:v1.5.8 /bin/stripe /bin/stripe

RUN pip3 install --upgrade aws-sam-cli