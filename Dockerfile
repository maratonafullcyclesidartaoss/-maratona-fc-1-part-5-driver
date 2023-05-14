FROM golang:1.19

WORKDIR /app

COPY . .

RUN GOOS=linux go build driver.go

CMD ["./driver"]