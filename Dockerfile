FROM ubuntu:trusty
MAINTAINER Eduards Sizovs

RUN apt-get update

RUN apt-get install -y curl wget

RUN curl -L https://get.rvm.io | bash -s stable

# For local shells
RUN echo '[[ -s "/etc/profile.d/rvm.sh" ]] && . "/etc/profile.d/rvm.sh" # Load RVM function' >> /.bashrc

# For remote shells / sharing PATH among RUN executions
ENV PATH /usr/local/rvm/bin:$PATH