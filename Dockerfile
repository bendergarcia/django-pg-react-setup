FROM python:3.8
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
RUN apt-get update -y \
  && apt-get upgrade -y \
  && apt install build-essential apt-utils curl wget -y \
  && apt-get install -y npm \
  && npm install -g npm@next \
  && apt-get install -y nodejs \
  && npm install -g n \
  && npm install axios  \
  && n stable   
RUN mkdir /app
WORKDIR /app
COPY requirements.txt /app/
RUN pip install -r requirements.txt
COPY . /app/
