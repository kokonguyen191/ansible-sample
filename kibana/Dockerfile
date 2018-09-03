FROM docker.elastic.co/kibana/kibana-oss:6.3.2
USER root
RUN chmod -v o+r /usr/share/kibana/
RUN rm /usr/share/kibana/config/kibana.yml
COPY ./config/kibana.yml /usr/share/kibana/config/
RUN chown -R kibana /usr/share/kibana/config/kibana.yml