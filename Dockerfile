FROM ubuntu
MAINTAINER IBM Research Emergent Solutions

RUN apt-get update && apt-get -q -y install git-core

RUN git clone https://USER:PASSWORD@hub.jazz.net/git/ACCOUNT/REPO /root/kibana

RUN rm /etc/login.defs
RUN mv /root/kibana/login.defs /etc/login.defs

COPY start-kibana.sh /root/start-kibana.sh

EXPOSE 8080
EXPOSE 5601
CMD /bin/bash -c "/root/start-kibana.sh"
