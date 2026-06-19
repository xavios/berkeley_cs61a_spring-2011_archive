# Use the latest Ubuntu image
FROM --platform=linux/amd64 ubuntu:20.04


RUN dpkg --add-architecture i386
 
# Update and install dependencies
RUN apt-get update

RUN apt-get install -y curl 
RUN apt-get install -y git
RUN apt-get install -y tmux
RUN apt-get install -y libsm6:i386
RUN apt-get install -y libx11-6:i386
RUN apt-get install -y rlwrap

RUN curl -k  https://decuser.github.io/assets/files/scheme/stk_4.0.1-1_amd64.deb -o stk_4.0.1-1_amd64.deb
RUN apt-get install -y libice6 libsm6
RUN dpkg -i stk_4.0.1-1_amd64.deb || true &&  apt-get install -f -y
RUN apt-get install -y jove

RUN touch ~/.joverc
RUN printf "\n# Custom aliases\nalias rlstk-simply='rlwrap stk-simply'\nalias rlstk-explorin='rlwrap stk-explorin'\nalias rlstk-grfx='rlwrap stk-grfx'\n" >> ~/.bashrc

 
