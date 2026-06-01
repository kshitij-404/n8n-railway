FROM n8nio/n8n:latest

USER root

RUN apk add --no-cache shadow

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 5678

ENTRYPOINT ["/entrypoint.sh"]
