FROM babim/centos6base

# install
RUN wget -O monyog.rpm 'https://www.webyog.com/downloadtracker?wy=1551179&pType=RPM&bit=64' && \
    yum install -y monyog.rpm && rm -f monyog.rpm && yum clean all && service MONyogd stop

# prepare volume
RUN mkdir /usr-start && mv /usr/local/MONyog /usr-start

# Expose
EXPOSE 5555

VOLUME ["/usr/local/MONyog"]

ADD start.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
