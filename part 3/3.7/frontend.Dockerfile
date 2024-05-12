FROM node:16-alpine

EXPOSE 5000

WORKDIR /usr/src/app

COPY "./example-frontend" .

RUN npm install && \
    npm run build && \
    npm install -g serve && \
    rm -rf node_modules && \
    npm cache clean --force && \
    adduser -S appuser && \
    chown appuser .
    
USER appuser

CMD ["npx", "serve", "-s", "-l", "5000", "build"]