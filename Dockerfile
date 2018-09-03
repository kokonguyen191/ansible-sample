FROM ubuntu
RUN apt-get update
RUN apt-get -y install ansible
RUN apt-get -y install sshpass
RUN apt-get -y install vim
ADD ansible ansible