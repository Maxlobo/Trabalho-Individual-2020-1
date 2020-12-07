FROM node:14

RUN mkdir -p /app/client
WORKDIR /app/client

COPY ./client/package.json .
COPY ./client/yarn.lock .
RUN yarn

COPY . /app

COPY ./client/entrypoint.sh /usr/bin/entrypoint_front.sh
RUN chmod +x /usr/bin/entrypoint_front.sh

ENTRYPOINT ["entrypoint_front.sh"]