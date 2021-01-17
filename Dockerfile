FROM ubuntu:18.04

WORKDIR /django
COPY pip-packages.txt /django/

# Python install & set-up
RUN apt update
RUN apt install python3.8 -y
RUN apt install python3-pip -y
RUN pip3 install --upgrade pip
RUN pip3 install -r pip-packages.txt


# Django install & set-up
COPY pip-packages.txt /django/
RUN pip install -r pip-packages.txt
COPY . /django/

RUN django-admin startproject myDjangoProject .
RUN python manage.py runserver your_server_ip:8000

#RUN apt install python3-django -y
#Start Django Project




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
