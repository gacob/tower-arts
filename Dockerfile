FROM ubuntu:latest
WORKDIR /tower
COPY . .
RUN apt update
RUN apt install -y sudo
RUN apt install -y dos2unix
RUN apt install -y iptables
RUN apt install -y nano
RUN apt install -y net-tools
RUN apt install -y ncat
RUN apt install -y wget
RUN apt install -y bsdgames
RUN dos2unix *
RUN wget https://www.vpn.net/installers/logmein-hamachi-2.1.0.203-x64.tgz
RUN tar -xvzf logmein-hamachi-2.1.0.203-x64.tgz