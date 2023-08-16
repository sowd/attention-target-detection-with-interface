FROM nvidia/cuda:11.7.1-cudnn8-devel-ubuntu22.04

ENV DEBIAN_FRONTEND="noninteractive" \
    PIP_ROOT_USER_ACTION="ignore" \
    FORCE_CUDA="1"

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    wget git \
    python3 python3-pip python-is-python3 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /root

RUN git clone --depth=1 \
    https://github.com/sowd/attention-target-detection-with-interface.git \
    attention-target-detection_repo

WORKDIR /root/attention-target-detection_repo

RUN pip install -r requirements.txt

RUN sh download_models.sh
# mkdir output
# python3 demo.py

#########################################################
### original settings

## Face detection modules
WORKDIR /root
RUN git clone https://github.com/VarCode-ai/yolox-face-detection.git
WORKDIR /root/yolox-face-detection
RUN apt update
RUN apt install -y cmake
RUN pip3 install -r requirements.txt



RUN apt update
RUN apt install -y inotify-tools