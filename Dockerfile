FROM ubuntu:18.04

WORKDIR /django
COPY pip-packages.txt /django/

# Python install & set-up
RUN apt update
RUN apt install python3.8 -y
RUN apt install python3-pip -y
RUN pip3 install --upgrade pip
RUN pip3 install -r pip-packages.txt

#Creat Django App & start test server
WORKDIR /django/projects
RUN django-admin startproject myapp
RUN cd /myapp
CMD python manage.py runserver 0.0.0.0:8000

# Web Service Gateway Interface Gunicorn install & set-up
RUN  apt-get update
RUN  apt-get install gunicorn -y



## Notes !!!!!
#follow up on the below
#https://docs.docker.com/engine/reference/builder/#run
#https://gunicorn.org/#quickstart
