FROM java:oracle-java8
MAINTAINER bn0ir <gblacknoir@gmail.com>

ADD ./zookeeper /opt/zookeeper

ADD ./zoo.cfg /opt/zookeeper/conf/zoo.cfg

ADD ./run_zoo.sh /opt/run_zoo.sh

WORKDIR /opt/
CMD ["/opt/run_zoo.sh"]
