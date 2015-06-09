FROM dockerimages/docker-nave:latest
MAINTAINER DIREKTSPEED LTD <frank@dspeed.eu>

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8  


ADD root /
VOLUME /home/strider/.strider
EXPOSE 3000
CMD ["bash", "/usr/local/bin/start.sh"]
