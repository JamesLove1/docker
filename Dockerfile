FROM ubuntu:18.04

WORKDIR /django

# Python install & set-up
RUN apt update
RUN apt install python3.8 -y
RUN apt install python3-pip -y
RUN pip3 install --upgrade pip
RUN pip3 install Django
RUN ls -l

#Creat Django App & start test servercd
RUN django-admin startproject myapp
RUN ls -l
RUN cd /myapp
RUN ls -l
RUN python manage.py runserver 0.0.0.0:8000

# Web Service Gateway Interface Gunicorn install & set-up
#RUN  apt-get install gunicorn -y


## Notes !!!!!
#follow up on the below
#https://docs.docker.com/engine/reference/builder/#run
#https://gunicorn.org/#quickstart
