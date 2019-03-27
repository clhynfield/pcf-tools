FROM platform-automation:latest

MAINTAINER Clayton Hynfield <chynfield@pivotal.io>

RUN apt-get update && apt-get install -y \
    vim \
    man \
    less \
    tmux \
    jq \
    ruby \
    ruby-dev \
 && rm -rf /var/lib/apt/lists/*

RUN gem install cf-uaac

ENV LC_CTYPE C.UTF-8

RUN mkdir /workspace
VOLUME "/workspace"
WORKDIR /workspace

CMD [ "bash" ]
