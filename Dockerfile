FROM kasmweb/desktop-deluxe:1.7.0
USER root

RUN apt-get update \
&&apt-get update -y \
&&apt-get install -y gimp gedit file-roller vlc wget 

RUN wget "https://github.com/Eugeny/terminus/releases/download/v1.0.117/terminus-1.0.117-linux.deb" -O /tmp/terminus.deb \
&&apt install -y /tmp/terminus.deb \
&&rm /tmp/terminus.deb

USER 1000
