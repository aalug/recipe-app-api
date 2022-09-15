FROM python:3.10-alpine3.15
LABEL maintainer="aalug"

WORKDIR /code
COPY requirements.txt /code/
COPY requirements.dev.txt /code/
ARG DEV=false
RUN pip install -r requirements.txt && \
    if [ $DEV = "true" ]; \
        then pip install -r requirements.dev.txt ; \
    fi

COPY . /code/
EXPOSE 8000
