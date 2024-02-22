Once the board is in usb boot mode, the container can be run with:
```
docker build -t my_image .

# Run resulting Docker image. The balenaOS image downloaded from balena-cloud is expected to exist in the HOST, inside ~/images. That directory will be bind-mounted inside the running container in /data/images/
docker container run --rm -it --privileged -v /dev/:/dev/ my_image /bin/bash
```

Inside the running container, `bash ./script` needs to be issued twice for the board to expose the eMMC over USB
