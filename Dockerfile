FROM ubuntu:18.04

# Python install & set-up
RUN sudo apt update
RUN sudo apt install python3.8
RUN python ––version

# Django install & set-up
RUN
RUN

# Web Service Gateway Interface Gunicorn install & set-up
RUN
RUN

## Notes !!!!!
#follow up on the below
#https://docs.docker.com/engine/reference/builder/#run
#https://gunicorn.org/#quickstart

#old inputs for this dockerfile
#ENV PYTHONUNBUFFERED=1
#WORKDIR /code
#COPY requirements.txt /code/
#RUN pip install -r requirements.txt
#COPY . /code/
