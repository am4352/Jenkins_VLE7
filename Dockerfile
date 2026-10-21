
# Build stage
FROM golang:1.25-alpine AS builder

WORKDIR /app

# Copy dependency definitions first
COPY go.mod go.sum ./
RUN go mod download

# Copy the application source
COPY . .

# Build the Go application
RUN CGO_ENABLED=0 GOOS=linux go build -o server .

# Runtime stage
FROM alpine:3.22

WORKDIR /app

COPY --from=builder /app/server ./server

EXPOSE 8080

CMD ["./server"]
