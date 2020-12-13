FROM node:14

RUN mkdir -p /app/client
WORKDIR /app/client

COPY ./client/package.json .
COPY ./client/yarn.lock .
RUN yarn

COPY ./client .

COPY ./client/entrypoint_front.sh /usr/bin/entrypoint_front.sh
RUN chmod +x /usr/bin/entrypoint_front.sh

ENTRYPOINT ["entrypoint_front.sh"]
