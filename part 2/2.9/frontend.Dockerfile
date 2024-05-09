FROM node:16

EXPOSE 5000

ENV REACT_APP_BACKEND_URL=http://localhost/api/

WORKDIR /usr/src/app

COPY "./example-frontend" .

RUN npm install 
RUN npm run build 
RUN npm install -g serve

CMD ["npx", "serve", "-s", "-l", "5000", "build"]