# syntax = docker/dockerfile:1
FROM ubuntu:22.04 as base

SHELL ["/bin/bash", "-c"]

# Build dependencies
RUN apt-get update && \
    apt-get install -y \
        curl \
        gcc \
        make \
        libssl-dev \
        zlib1g-dev \
        tig \
        zip \
        unzip \
        libreadline-dev \
        locales\
        locales-all\
        build-essential \
        git \
        libvips42 \
        pkg-config \
        libyaml-dev

# Install packages needed to build gems
RUN apt-get install --no-install-recommends -y

RUN useradd admin --create-home --shell /bin/bash

################################################################################
USER admin:admin
################################################################################
# Get ruby installer
RUN curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash
ENV PATH /home/admin/.rbenv/shims:/home/admin/.rbenv/bin:$PATH
RUN curl -fsSL https://github.com/rbenv/rbenv-installer/raw/main/bin/rbenv-doctor | bash

# Set ruby version
ARG RUBY_VERSION=3.3.1

RUN rbenv install ${RUBY_VERSION}
RUN rbenv global ${RUBY_VERSION}
