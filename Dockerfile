FROM python:3.14-rc-alpine

COPY requirements.txt /temp/requirements.txt 
COPY backend /backend
WORKDIR /backend
EXPOSE 8000

RUN pip install -r /temp/requirements.txt 

RUN adduser  --disabled-password service-user

USER service-user 

