FROM balenalib/raspberrypi3-python:3.8

MAINTAINER Jacob Kring <jacob.kring.71@gmail.com>

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        libatlas-base-dev

RUN mkdir -p /opt/pandas/build/

COPY requirements.txt /opt/pandas/build/requirements.txt

RUN pip install -r /opt/pandas/build/requirements.txt
