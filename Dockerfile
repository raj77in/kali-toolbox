FROM docker.io/kalilinux/kali-rolling
ENV NAME=kali-toolbox VERSION=32
ENV TOOLBOX_PATH=/usr/bin/toolbox
LABEL com.github.containers.toolbox="true" \
      com.github.debarshiray.toolbox="true" \
      com.github.containers.toolbox="true" \
      com.github.debarshiray.toolbox="true" \
      name="kali" \
      version="rolling" \
      usage="This image is meant to be used with the toolbox command" \
      summary="Base image for creating Fedora toolbox containers" \
      maintainer="Debarshi Ray <rishi@fedoraproject.org>"
RUN apt update && apt install -y sudo libcap2-bin && useradd -m -G sudo amitag;
RUN touch /run/.containerenv
COPY toolbox /usr/bin/toolbox
COPY sudo /etc/sudoers.d/sudo
CMD /bin/sh
