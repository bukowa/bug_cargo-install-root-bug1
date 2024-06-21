FROM rust:alpine
RUN apk update && apk add musl-dev
WORKDIR /app

COPY . .
RUN chmod +x entrypoint.sh
RUN chmod +x entrypoint2.sh

ENTRYPOINT ["/app/entrypoint.sh"]
