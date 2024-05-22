FROM ubuntu:latest
WORKDIR /tower
COPY . .
RUN apt update
RUN apt install -y net-tools
RUN apt install -y ncat
RUN apt install -y wget
RUN wget https://www.vpn.net/installers/logmein-hamachi-2.1.0.203-x64.tgz
RUN tar -xvzf logmein-hamachi-2.1.0.203-x64.tgz
WORKDIR logmein-hamachi-2.1.0.203-x64
RUN ./install.sh
RUN /etc/init.d/logmein-hamachi start
CMD hamachi login
CMD hamachi set-nick joel
CMD hamachi create dolordemuelas6000 juiciofinal