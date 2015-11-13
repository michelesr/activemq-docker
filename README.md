# ActiveMQ Docker repository

Repository for [Apache ActiveMQ](http://activemq.apache.org/)

# Usage

Run the daemon exporting the `8161` port for the [web console](http://activemq.apache.org/web-console.html), and the ports for the required services (eg. `1883` for [MQTT](https://en.wikipedia.org/wiki/MQTT), or `61616` for [JMS](https://en.wikipedia.org/wiki/Java_Message_Service))

    $ docker run -d --name activemq -p 1883:1883 -p 8161:8161 michelesr/activemq:latest

Please refer to the documentation for service ports.
