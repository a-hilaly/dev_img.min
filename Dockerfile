FROM ubuntu:trusty

RUN apt-get update \
  && apt-get -y upgrade \
  && apt-get install -y

RUN apt-get install -y software-properties-common \
                       python-software-properties \
                       python3-pip \
                       wget

RUN apt-get install cython -y
# set locale
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# language deps
RUN add-apt-repository ppa:eugenesan/ppa -y
RUN apt-get update
RUN apt-get install php5 -y
RUN apt-get install npm -y
RUN apt-get install golang -y
RUN apt-get install g++ gcc -y
RUN apt-get install ruby-full -y
RUN apt-get install sbcl -y
RUN apt-get install gawk -y
RUN apt-get install git -y
WORKDIR /code
