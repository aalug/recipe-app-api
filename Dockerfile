FROM python:3.10-alpine3.15
LABEL maintainer="aalug"

WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/
EXPOSE 8000
