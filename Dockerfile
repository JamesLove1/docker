FROM ubuntu:18.04

# Python install & set-up
RUN apt update
RUN apt install python3.8 -y
#RUN python ––version
RUN apt install python3-pip -y

# Django install & set-up
RUN cd /
RUN mkdir django
RUN cd django
RUN apt install python3-django -y
RUN django-admin --version
#Start Django Project
RUN django-admin startproject myDjangoProject .
RUN python manage.py runserver your_server_ip:8000

# Web Service Gateway Interface Gunicorn install & set-up
RUN  apt-get update
RUN  apt-get install gunicorn -y


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
