FROM node:alpine3.21

WORKDIR /app

COPY . /app	

EXPOSE 3000

CMD ["node","test.js"]
