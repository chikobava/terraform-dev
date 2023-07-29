FROM ubuntu:18.04

ARG CLOUD_SDK_VERSION=423.0.0
ARG USERNAME=gcloud
ARG UID=1000

# Install software
RUN apt-get -qqy update && apt-get install -qqy \
    ansible \
    sudo \
    curl \
    python3-pip \
    python3 \
    python3-dev \
    python3-crcmod \
    apt-transport-https \
    lsb-release \
    openssh-client \
    git \
    make \
    gnupg && \
    export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)" && \
    echo "deb https://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" > /etc/apt/sources.list.d/google-cloud-sdk.list && \
    echo "deb https://apt.releases.hashicorp.com $(lsb_release -cs) main" >  /etc/apt/sources.list.d/hashicorp.list && \
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - && \
    curl https://apt.releases.hashicorp.com/gpg | apt-key add - && \
    apt-get update && \
    apt-get install -y google-cloud-sdk=$CLOUD_SDK_VERSION-0 terraform packer && \ 
    pip3 install pipenv 

# Add user
RUN groupadd -g $UID $USERNAME && \
    useradd -u $UID -g $UID -m $USERNAME -s /bin/bash && \
    usermod -aG sudo $USERNAME && \
    echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME && \
    chmod 0440 /etc/sudoers.d/$USERNAME 
WORKDIR /gcloud
