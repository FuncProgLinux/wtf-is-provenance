FROM docker.io/library/golang:1.25-alpine AS builder

WORKDIR /app

COPY . .

RUN apk add --no-cache make && make

FROM docker.io/library/alpine:latest

WORKDIR /app

COPY --from=builder /app/app .

EXPOSE 8001

CMD ["/app/app"]
