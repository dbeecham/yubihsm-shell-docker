# ubuntu 21.10
FROM ubuntu:impish

# get deps
RUN apt-get update
RUN apt-get install -y curl libpcsclite1 libusb-1.0-0 libedit2 gnutls-bin

WORKDIR /yubihsm/
RUN curl -LO https://developers.yubico.com/YubiHSM2/Releases/yubihsm2-sdk-2021-12-ubuntu2110-amd64.tar.gz
RUN tar -xvf yubihsm2-sdk-2021-12-ubuntu2110-amd64.tar.gz
RUN dpkg -i yubihsm2-sdk/*deb
CMD /usr/bin/yubihsm-shell
