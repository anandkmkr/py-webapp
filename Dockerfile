FROM node:18-alpine

WORKDIR /usr/src/app

COPY index.html .
COPY my-image.jpg .

EXPOSE 8080

CMD ["node", "-e", "require('http').createServer((req, res) => require('fs').createReadStream('index.html').pipe(res)).listen(8080)"]
