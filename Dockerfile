FROM python:3
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/
RUN apt-get install ssh
RUN systemctl ssh start
RUN systemctl ssh enable
RUN service ssh status
