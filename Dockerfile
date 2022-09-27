FROM alpine:latest

RUN apk add --no-cache \
    nodejs npm 

COPY package.json  .
RUN npm install 

FROM alpine:latest

RUN apk add --no-cache \
    nodejs npm \
    vim

CMD npm start

EXPOSE 3000
