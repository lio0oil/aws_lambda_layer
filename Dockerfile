FROM public.ecr.aws/lambda/python:3.12

RUN dnf install -y zip

COPY requirements.txt .
COPY python.sh .