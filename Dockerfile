FROM balenalib/raspberrypi3-python:3.8

MAINTAINER Jacob Kring <jacob.kring.71@gmail.com>

RUN apt-get update && apt-get -y install libc-dev build-essential

COPY requirements.txt requirements.txt

RUN pip install -U pip && pip install -v -r requirements.txt 