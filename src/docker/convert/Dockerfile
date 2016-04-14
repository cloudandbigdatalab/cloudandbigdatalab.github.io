FROM ubuntu

MAINTAINER shawnmaten@gmail.com

RUN apt-get update && apt-get install -y \
imagemagick \
texlive-full \
unoconv \
wget

RUN apt-get update \
&& wget https://github.com/jgm/pandoc/releases/download/1.15.0.6/pandoc-1.15.0.6-1-amd64.deb \
&& dpkg -i pandoc-1.15.0.6-1-amd64.deb \
&& apt-get install -f \
&& rm pandoc-1.15.0.6-1-amd64.deb

RUN apt-get remove -y wget
