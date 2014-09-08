FROM phusion/passenger-ruby21:0.9.12

MAINTAINER Eliot Jordan eliotj@princeton.edu

#Enable root password
RUN echo 'root:dev' | chpasswd

RUN apt-get update && apt-get install git

# Install RVM 
RUN \curl -L https://get.rvm.io | bash -s stable && source ~/.rvm/scripts/rvm && rvm requirements



