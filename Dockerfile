FROM kasmweb/desktop-deluxe:1.7.0
USER root

RUN apt-get update \
&&apt-get update -y \
&&apt-get install -y gimp gedit file-roller vlc wget 

RUN wget "https://discord.com/api/download?platform=linux&format=deb" -O /tmp/discord.deb \
&& dpkg -i /tmp/discord.deb \
&& rm /tmp/discord.deb

RUN snap install telegram-desktop
RUN snap install whatsdesk


USER 1000
