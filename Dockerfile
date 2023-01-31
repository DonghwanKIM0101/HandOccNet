# Requirement for HandOccNet

FROM nvidia/cuda:11.3.0-cudnn8-devel-ubuntu20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update \
    && apt-get install -y software-properties-common \
    && apt-get -y update \
    && add-apt-repository universe
RUN apt-get -y update
RUN apt-get -y install python3
RUN apt-get -y install python3-pip
RUN apt-get -y install libgl1-mesa-glx
RUN pip install numpy==1.19.5 einops chumpy opencv-python pycocotools pyrender tqdm
RUN pip install torch==1.12.1+cu113 torchvision==0.13.1+cu113 -f https://download.pytorch.org/whl/torch_stable.html
RUN apt-get -y install libglfw3-dev libgles2-mesa-dev zip