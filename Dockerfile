FROM balenalib/raspberrypi3-python:3.8

MAINTAINER Jacob Kring <jacob.kring.71@gmail.com>

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt
