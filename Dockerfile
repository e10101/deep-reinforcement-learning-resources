FROM tensorflow/tensorflow:2.7.0-jupyter

USER root

RUN apt-get update && apt-get upgrade --yes
RUN apt-get install -y python-opengl xvfb ffmpeg freeglut3-dev

COPY requirements.txt ./
RUN pip install --upgrade pip
RUN pip install -r requirements.txt --use-feature=2020-resolver -i https://pypi.tuna.tsinghua.edu.cn/simple
