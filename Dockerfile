FROM archlinux/base
LABEL maintainer "leandro.kollenberger@gmail.com"

COPY setup.sh /setup.sh
RUN chmod +x /setup.sh && /setup.sh && sync && rm /setup.sh
USER firefox
ENV HOME /home/firefox
CMD /usr/bin/firefox-developer-edition
