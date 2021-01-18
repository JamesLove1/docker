FROM ubuntu:18.04

# Python install & set-up
RUN apt update
RUN apt install python3.8 -y
RUN apt install python3-pip -y
RUN pip3 install --upgrade pip
RUN apt install nano
RUN pip3 install Django
RUN django-admin startproject myapp

WORDIR /myapp

#RUN chmod +x manage.py
#RUN python3 manage.py migrate
#CMD ["python3 myapp/manage.py runserver 0.0.0.0:8000"]

#ADD django.txt ./
#RUN chmod +x ./django.txt
#CMD ["/django.txt"]






# Web Service Gateway Interface Gunicorn install & set-up
#RUN  apt-get install gunicorn -y


## Notes !!!!!
#follow up on the below
#https://docs.docker.com/engine/reference/builder/#run
#https://gunicorn.org/#quickstart


#FROM python:3
#ENV PYTHONUNBUFFERED=1
#WORKDIR /code
#COPY requirements.txt /code/
#RUN pip install -r requirements.txt
#COPY . /code/
