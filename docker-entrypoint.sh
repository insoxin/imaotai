FROM debian
RUN apt-get update
RUN apt install git wget curl sudo -y
RUN git clone https://github.com/insoxin/imaotai.git
RUN mkdir /root/imaotai
RUN ls
RUN cp -r /imaotai/* /root/imaotai
ENV QR_JDC=/imaotai
EXPOSE 1499
ENTRYPOINT ["/imaotai/docker-entrypoint.sh"]
