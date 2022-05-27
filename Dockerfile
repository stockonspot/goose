FROM golang:alpine

WORKDIR /app
COPY . .
RUN CFO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o ./bin/goose ./cmd/goose

ENTRYPOINT ["tail", "-f", "/dev/null"]
