FROM 421805900968.dkr.ecr.us-east-2.amazonaws.com/cloudacademy/labs-workspace/python-regex
USER root
WORKDIR /root/lab
COPY src ./src
COPY test ./test
