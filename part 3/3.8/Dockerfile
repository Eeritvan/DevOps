FROM node:16-alpine AS build

WORKDIR /usr/src/app

COPY "./example-frontend" .

RUN npm install && \
    npm run build && \
    npm install -g serve

FROM alpine

EXPOSE 5000

WORKDIR /app

COPY --from=build /usr/src/app/build ./build

RUN apk add --update nodejs npm && \
    adduser -S appuser && \
    chown appuser .

USER appuser

CMD ["npx", "serve", "-s", "-l", "5000", "build"]
