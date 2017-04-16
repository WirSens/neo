FROM yikaus/alpine-bash

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY ./src /usr/src/app
CMD npm start

WORKDIR /usr/src/app/

RUN chmod +x /usr/src/app/NeoCortecGateway

EXPOSE 2000

#CMD ["/bin/sh", "/usr/src/app/start.sh"]
CMD ["/bin/sh", "-c", "NeoCortecGateway"]