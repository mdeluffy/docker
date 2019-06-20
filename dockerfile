FROM ubuntu:latest
MAINTAINER arun
RUN apt update 
RUN apt install -y python-pip python-dev build-essential
copy . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
cmd ["app.py"]
