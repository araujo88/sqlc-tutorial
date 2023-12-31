FROM golang:1.21.0-bullseye
WORKDIR /app
COPY go.mod ./
COPY go.sum ./
RUN go mod download
COPY . /app
CMD go run main.go