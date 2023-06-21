FROM balenalib/armv7hf-debian:latest

WORKDIR /usr/src/app/
COPY ./assets.tar.gz /usr/src/app/
COPY ./script.sh /usr/src/app/

RUN apt-get update && apt-get install -y libusb-1.0-0-dev git build-essential usbrelay usbutils ssh tar pkg-config && \
 git clone https://github.com/boundarydevices/imx_usb_loader.git && \
 cd imx_usb_loader && \
 git checkout c598fd1 && \
 tar xf /usr/src/app/assets.tar.gz && \
 cp -r assets/* . && \
 make 

ENV UDEV=1

CMD ["bash", "script.sh"]
