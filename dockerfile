FROM tensorflow/tensorflow:latest-gpu-py3
MAINTAINER "Sumerin"

RUN apt-get install -y git  libsdl2-gfx-dev libsdl2-ttf-dev

RUN git clone -b v2.0.4 https://github.com/google-research/football.git && mkdir -p football/third_party/gfootball_engine/lib && wget https://storage.googleapis.com/gfootball/prebuilt_gameplayfootball_v2.0.4.so -O football/third_party/gfootball_engine/lib/prebuilt_gameplayfootball.so && cd football && GFOOTBALL_USE_PREBUILT_SO=1 pip3 install .