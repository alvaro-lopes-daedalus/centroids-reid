#
# Created on Fri Mar 24 2023
#
# Copyright (c) 2023 Tran Phuong Nam
# Contact: namphuongtran9196@gmail.com
#

FROM namphuongtran9196/pycuda:python3.8.16-cuda11.0.3-cudnn8-ubuntu20.04 AS build

ENV DEBIAN_FRONTEND noninteractive

ARG USER=vscode

ENV DEBIAN_FRONTEND noninteractive
# Update apt
RUN apt update -y
RUN apt install -y git vim nano unzip 

WORKDIR /project

COPY ./requirements.txt /project/requirements.txt

# Install python dependencies
RUN pip3 install --upgrade pip
RUN pip3 install -r /project/requirements.txt
