FROM node:boron
MAINTAINER ops (ops@trulywireless.com)

ENV RELEASE_DIR /breakpad-server
ENV PORT 1127

RUN mkdir -p $RELEASE_DIR
WORKDIR $RELEASE_DIR

COPY . $RELEASE_DIR
RUN npm install

EXPOSE $PORT

CMD ["npm", "run", "serve"]
