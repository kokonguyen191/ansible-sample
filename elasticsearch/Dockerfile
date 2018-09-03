FROM docker.elastic.co/elasticsearch/elasticsearch:6.3.2
USER root
COPY ./config/elasticsearch.yml /usr/share/elasticsearch/config/
RUN chown -R elasticsearch:elasticsearch /usr/share/elasticsearch/config/elasticsearch.yml