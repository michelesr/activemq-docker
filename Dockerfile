FROM java:8

MAINTAINER Michele Sorcinelli "michelesr@autistici.org"

ENV ACTIVEMQ_HOME /opt/activemq
ENV ACTIVEMQ_VERSION 5.12
ENV ACTIVEMQ_ARCHIVE apache-activemq-5.12-20150808.222442-228-bin.tar.gz

WORKDIR /opt/

RUN curl -L https://repository.apache.org/content/repositories/snapshots/org/apache/activemq/apache-activemq/${ACTIVEMQ_VERSION}-SNAPSHOT/${ACTIVEMQ_ARCHIVE} \
    | tar xz

RUN mv apache-activemq-${ACTIVEMQ_VERSION}-SNAPSHOT/ activemq/

EXPOSE 61616 8161

CMD ["/opt/activemq/bin/activemq", "console"]
