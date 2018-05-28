FROM golang

COPY . /go/src/go-dev
WORKDIR /go/src/go-dev

RUN echo $PATH

# RUN go build
RUN go get github.com/codegangsta/gin

CMD gin -p 80

EXPOSE 80