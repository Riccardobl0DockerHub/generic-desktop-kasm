FROM kasmweb/desktop-deluxe:1.7.0
USER root

RUN apt-get update \
&&apt-get update -y \
&&apt-get install -y gimp gedit flatpak file-roller vlc 



USER 1000