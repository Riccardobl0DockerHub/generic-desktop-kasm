FROM kasmweb/desktop-deluxe:1.7.0
USER root

RUN apt-get update \
&&apt-get update -y \
&&apt-get install -y gimp gedit file-roller vlc wget 

RUN wget "https://discord.com/api/download?platform=linux&format=deb" -O /tmp/discord.deb \
&& apt install -y /tmp/discord.deb \
&& rm /tmp/discord.deb

RUN wget -O- https://telegram.org/dl/desktop/linux | tar xJ -C /opt/ \
&&ln -s /opt/Telegram/Telegram /usr/local/bin/telegram-desktop


USER 1000
