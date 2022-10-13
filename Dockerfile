FROM node:16-alpine3.11

ADD init.sh /usr/src/app/init.sh
USER root
RUN chmod +x /usr/src/app/init.sh
ENV PORT 5000
EXPOSE $PORT
ENTRYPOINT ["sh","/usr/src/app/init.sh"]