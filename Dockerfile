FROM python:3
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
RUN apt-get update
RUN apt-get upgrade 
RUN apt install build-essential
RUN apt-get install -y npm
RUN npm install -g npm@next
RUN apt-get install -y nodejs
RUN npm install -g n
RUN npm install axios 
RUN n stable   
RUN mkdir /app
WORKDIR /app
COPY requirements.txt /app/
RUN pip install -r requirements.txt
COPY . /app/
