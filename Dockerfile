# ENV RABBITMQ_VERSION 3.6.10
# ENV RABBITMQ_DEBIAN_VERSION 3.6.10-1

FROM rabbitmq

RUN apt-get update 
RUN apt-get install -y --no-install-recommends wget 
RUN wget -O https://bintray.com/rabbitmq/community-plugins/download_file?file_path=rabbitmq_delayed_message_exchange-0.0.1.ez /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins/rabbitmq_delayed_message_exchange-0.0.1.ez

RUN rabbitmq-plugins enable --offline rabbitmq_management
RUN rabbitmq-plugins enable rabbitmq_delayed_message_exchange

EXPOSE 15671 15672
