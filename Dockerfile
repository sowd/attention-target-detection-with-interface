FROM nvidia/cuda:11.7.0-cudnn8-devel-ubuntu22.04

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
    https://github.com/kairi003/attention-target-detection.git \
    attention-target-detection_repo

WORKDIR /root/attention-target-detection_repo

RUN pip install -r requirements.txt

# sh download_models.sh
# mkdir output
# python3 demo.py
