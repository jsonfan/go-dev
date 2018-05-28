FROM golang

COPY . /go/src/go-dev
WORKDIR /go/src/go-dev

RUN echo $PATH

RUN curl https://glide.sh/get | sh
RUN glide update 
# RUN go build
RUN go get github.com/codegangsta/gin

EXPOSE 80