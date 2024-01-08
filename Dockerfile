FROM ubuntu:latest
RUN apt-get update && apt-get install -y python3-pip python3-dev build-essential
RUN sudo chmod a+r /usr/share/keyrings/docker-archive-keyring.gpg


WORKDIR /app
COPY requirements.txt /app/
RUN pip3 install -r requirements.txt

COPY . /app

ENTRYPOINT ["honcho"]
CMD ["start"]

EXPOSE 5000
