FROM babim/centosbase:6

RUN yum install -y wget bash && cd / && wget --no-check-certificate https://raw.githubusercontent.com/babim/docker-tag-options/master/z%20SCRIPT%20AUTO/option.sh

# install
RUN wget -O monyog.rpm http://media.matmagoc.com/MONyogx64.rpm && \
    yum install -y monyog.rpm && rm -f monyog.rpm && yum clean all && service MONyogd stop

# prepare volume
RUN mkdir /usr-start && mv /usr/local/MONyog /usr-start

# Expose
EXPOSE 5555

VOLUME ["/usr/local/MONyog"]

ADD start.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
