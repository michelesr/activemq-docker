FROM java:8

ENV ACTIVEMQ_HOME /opt/activemq
ENV ACTIVEMQ_VERSION 5.12
ENV ACTIVEMQ_ARCHIVE apache-activemq-5.12-20150808.222442-228-bin.tar.gz

WORKDIR /opt/

RUN wget https://repository.apache.org/content/repositories/snapshots/org/apache/activemq/apache-activemq/${ACTIVEMQ_VERSION}-SNAPSHOT/${ACTIVEMQ_ARCHIVE}

RUN tar xf ${ACTIVEMQ_ARCHIVE} && rm ${ACTIVEMQ_ARCHIVE}

RUN mv apache-activemq-${ACTIVEMQ_VERSION}-SNAPSHOT/ activemq/

EXPOSE 61616 8161

CMD ["/opt/activemq/bin/activemq", "console"]
