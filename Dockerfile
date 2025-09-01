FROM alpine:3.20

COPY ./wstunnel /usr/bin/wstunnel

RUN chmod +x /usr/bin/wstunnel

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

RUN chmod +x /usr/local/bin/entrypoint.sh

EXPOSE 443

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]