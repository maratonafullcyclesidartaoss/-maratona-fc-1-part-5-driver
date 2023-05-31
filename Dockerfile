FROM golang:1.18

RUN adduser nonroot

USER nonroot

WORKDIR /app

COPY ./docs .
COPY driver.go .
COPY drivers.json .
COPY go.mod .
COPY go.sum .

CMD ["tail", "-f", "/dev/null"]