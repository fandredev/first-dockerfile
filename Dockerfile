FROM node:latest
ENV PORT=3000

LABEL Felipe André

COPY . /var/www

WORKDIR /var/www

RUN npm install

ENTRYPOINT ["npm","start"]

EXPOSE ${PORT} 