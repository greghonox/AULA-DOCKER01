FROM python:3.8

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /code

COPY requeriments.txt .
RUN apt-get update -y && apt-get install vim htop python3-setuptools python3-pip -y
RUN /usr/local/bin/python3 -m pip install --upgrade pip
RUN pip3 install -r requeriments.txt

COPY . .