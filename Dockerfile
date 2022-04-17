FROM node:16-alpine

LABEL version="1.0"
LABEL maintainer="Minicodelab <https://github.com/minicodelab>"
LABEL description="Dockerfile for Snippets web site.\
This is a project for learning purpose and you can follow a view the development in the Twich channel:\
  - https://www.twitch.tv/minicodelab"

EXPOSE 3000

WORKDIR /usr/app
COPY . .
RUN apk --no-cache add curl
RUN npm install
CMD [ "npm", "run", "dev", "--", "--host" ]
