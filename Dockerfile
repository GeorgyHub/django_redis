FROM python:3.12-alpine

COPY requirements.txt /temp/requirements.txt 
COPY backend /backend
WORKDIR /backend
EXPOSE 8000

RUN apk add postgresql-client build-base postgresql-dev

RUN pip install -r /temp/requirements.txt 

RUN adduser  --disabled-password service-user

USER service-user 

