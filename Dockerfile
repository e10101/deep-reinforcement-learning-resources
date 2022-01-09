#FROM jupyter/tensorflow-notebook:12460db878e3
FROM tensorflow/tensorflow:2.7.0-jupyter
COPY requirements.txt ./
RUN pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

USER root

RUN apt-get update
RUN apt-get install -y python-opengl
RUN apt-get install -y xvfb
RUN apt-get install -y ffmpeg
RUN apt-get install -y freeglut3-dev

RUN pip install pyvirtualdisplay
RUN pip install dm-reverb
RUN pip install jupyterlab