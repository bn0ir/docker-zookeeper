FROM dockerfile/java:oracle-java8
MAINTAINER bn0ir <gblacknoir@gmail.com>

ADD ./zookeeper /opt/zookeeper

ADD ./zoo.cfg /opt/zookeeper/conf/zoo.cfg

WORKDIR /app/
CMD ["/app/run_zoo.sh"]
