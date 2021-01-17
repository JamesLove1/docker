FROM ubuntu:18.04

WORKDIR /django
COPY pip-packages.txt /django/

# Web Service Gateway Interface Gunicorn install & set-up
RUN  apt-get install gunicorn -y -d

# Python install & set-up
RUN apt update
RUN apt install python3.8 -y
RUN apt install python3-pip -y
RUN pip3 install --upgrade pip
RUN pip3 install -r pip-packages.txt
RUN ls -l

#Creat Django App & start test server
#WORKDIR /django/projects
CMD django-admin startproject myapp
CMD cd /myapp
CMD ls -l
CMD python manage.py runserver 0.0.0.0:8000




## Notes !!!!!
#follow up on the below
#https://docs.docker.com/engine/reference/builder/#run
#https://gunicorn.org/#quickstart
