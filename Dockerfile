FROM golang:1.18-alpine3.15

ENV GO111MODULE=on
ENV GOPROXY=https://goproxy.cn,direct

WORKDIR $GOPATH/src/github.com/go-gin-example
COPY . $GOPATH/src/github.com/go-gin-example
RUN go build -o go-gin-example main.go

EXPOSE 8000
ENTRYPOINT ["./go-gin-example"]