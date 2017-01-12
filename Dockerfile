FROM python:3
#FROM python:2.7

WORKDIR /usr/src/app

# Add i386 architecture
RUN dpkg --add-architecture i386

# Update repository
RUN apt-get update

RUN apt-get install -y \
      build-essential \
      ccache \
      git \
      zlib1g-dev \
      python2.7-dev \
      libncurses5:i386 \
      libstdc++6:i386 \
      zlib1g:i386 \
      openjdk-7-jdk \
      unzip \
      ant \
      ccache \
      openssh-server \
      telnet

COPY webkivy .

COPY config/requirements.txt /src/requirements.txt

RUN pip install -r /src/requirements.txt
