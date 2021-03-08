FROM ruby:2.7.2-slim-buster

WORKDIR /pronto

RUN set -eux; \
  apt-get update; \
  apt-get install -y --no-install-recommends \
    build-essential \
    cmake \
    curl \
    git \
    openssh-client \
    pkg-config \
  ; \
  curl -sL https://deb.nodesource.com/setup_12.x | bash -; \
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -; \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list; \
  apt-get update; \
  apt-get install -y --no-install-recommends nodejs yarn; \
  rm -rf /var/lib/apt/lists/*

COPY Gemfile Gemfile.lock /pronto/
RUN bundle install && bundle binstub pronto
ENV PATH /pronto/bin:$PATH
