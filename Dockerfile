
FROM golang:1.25-alpine AS builder

WORKDIR /app

COPY go.mod ./
RUN go mod download

COPY main.go ./

RUN CGO_ENABLED=0 GOOS=linux go build -o app main.go

FROM alpine:3.22

WORKDIR /app

COPY --from=builder /app/app .

CMD ["./app"]
