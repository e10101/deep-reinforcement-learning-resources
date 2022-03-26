#FROM jupyter/tensorflow-notebook:12460db878e3
FROM tensorflow/tensorflow:2.7.0-jupyter

USER root

# Speed up the building in China region.
COPY ./ubuntu-cn-sources.list /etc/apt/sources.list

RUN apt-get update && apt-get upgrade --yes
RUN apt-get install -y python-opengl
RUN apt-get install -y xvfb
RUN apt-get install -y ffmpeg
RUN apt-get install -y freeglut3-dev
RUN apt-get install -y fonts-font-awesome

COPY requirements.txt ./
# -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

# SSH
RUN apt-get update
RUN apt install -y openssh-server sudo
RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 drl
RUN mkdir /var/run/sshd
RUN echo 'drl:drl' | chpasswd
