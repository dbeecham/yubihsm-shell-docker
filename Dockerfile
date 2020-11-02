# ubuntu 20.10
FROM ubuntu:groovy

# get deps
RUN apt-get update
RUN apt-get install -y libcurl4 libedit2 libusb-1.0-0 libbsd0 curl

WORKDIR /yubihsm/
RUN curl -LO https://developers.yubico.com/YubiHSM2/Releases/yubihsm2-sdk-2020-10-ubuntu2010-amd64.tar.gz
RUN tar -xvf yubihsm2-sdk-2020-10-ubuntu2010-amd64.tar.gz
RUN dpkg -i yubihsm2-sdk/*deb
CMD /usr/bin/yubihsm-shell
