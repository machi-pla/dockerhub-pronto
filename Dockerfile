FROM ruby:2.7.1-slim-buster

WORKDIR /pronto

RUN set -eux; \
  apt-get update; \
  apt-get install -y --no-install-recommends \
    build-essential \
    cmake \
    git \
    openssh-client \
    pkg-config \
  ; \
  rm -rf /var/lib/apt/lists/*

COPY Gemfile Gemfile.lock /pronto/

RUN bundle install
