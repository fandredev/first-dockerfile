# De onde você vai construir a imagem
FROM node:latest

# Variavel de ambiente
ENV PORT=3333

# O nome de quem tá construindo a imagem
LABEL maintainer="Felipe André"
LABEL description="This is my first dockerfile in Docker store"

#  Copiar arquivos para o container na pasta
COPY . /var/www

# Aonde ele vai começar a executar
WORKDIR /var/www

# Rode
RUN npm install

# Comando que ele vai utilizar para startar o server
ENTRYPOINT ["npm","start"]

# Exponha
EXPOSE ${PORT} 