FROM ubuntu:18.04

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

RUN apt-get update

RUN apt-get install -y curl wget
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN apt-get install -y python3
RUN apt-get install -y python3-distutils
RUN python3 get-pip.py

RUN apt-get install -y \
    python-pip \
    build-essential \
    git \
    python \
    python3-dev \
    ffmpeg \
    libsdl2-dev \
    libsdl2-image-dev \
    libsdl2-mixer-dev \
    libsdl2-ttf-dev \
    libportmidi-dev \
    libswscale-dev \
    libavformat-dev \
    libavcodec-dev \
    zlib1g-dev

RUN pip3 install cython kivy

RUN apt-get install -y \
	git \
	zip \
	unzip \
	openjdk-8-jdk \
	python3-pip \
	autoconf \
	libtool \
	pkg-config \
	zlib1g-dev \
	libncurses5-dev \
	libncursesw5-dev \
	libtinfo5 \
	cmake

RUN pip3 install git+https://github.com/kivy/buildozer.git

RUN apt-get install -y \
	libltdl-dev \
	libffi-dev \
	libssl-dev \
	autoconf \
	autotools-dev

WORKDIR /home/
