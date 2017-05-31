FROM jenkins:latest

USER root
RUN apt-get update \
&&  apt-get install -y --no-install-recommends \
    python-dev \
    python3 \
    pkg-config \
    build-essential \
    libpq-dev \
    libffi-dev \
    libvirt-dev \
    libsasl2-dev \
    libldap2-dev \
    libssl-dev \
&&  rm -rf /var/lib/apt/lists/*

USER jenkins

