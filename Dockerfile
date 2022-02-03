FROM debian:latest
LABEL MAINTAINER="https://github.com/Garrettiscool101/zphisher"

WORKDIR /zphisher/
ADD . /zphisher

RUN apt update && \
    apt full-upgrade -y && \
    apt install -y curl unzip wget && \
    apt install --no-install-recommends -y php && \
    apt clean
CMD ["./zphisher.sh"]

with:
  name: garretth2007/zphisher
  username: ${{ secrets.DOCKER_USERNAME }}
  password: ${{ secrets.DOCKER_PASSWORD }}
  dockerfile: Dockerfile
