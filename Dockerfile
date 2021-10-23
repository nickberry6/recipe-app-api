FROM python:3.7-alpine
MAINTAINER Nick Berry

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app
COPY . .

RUN adduser -D user
USER user
