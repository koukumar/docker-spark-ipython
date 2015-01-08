FROM logbase/docker-spark

MAINTAINER karthikv2k@gmail.com

ENV DEBIAN_FRONTEND noninteractive

# Python binary dependencies, developer tools
RUN apt-get update && apt-get install -y -q \
    build-essential \
    make \
    gcc \
    zlib1g-dev \
    git \
    python \
    python-dev \
    python-pip \
    python-sphinx \
    libzmq3-dev \
    sqlite3 \
    libsqlite3-dev \
    pandoc \
    libcurl4-openssl-dev

RUN pip2 install ipython[notebook]

EXPOSE 8888

ADD run.sh /run.sh
RUN chmod a+x /run.sh

CMD ["bash", "/run.sh"]
