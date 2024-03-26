# Use a minimal Go base image
FROM golang:alpine AS builder

WORKDIR /app

COPY . .

RUN go build -o http-echo .

FROM alpine

WORKDIR /app

COPY --from=builder /app/http-echo .
EXPOSE 5678/tcp

<<<<<<< HEAD
ENV ECHO_TEXT="hello-world"

ENTRYPOINT ["/http-echo"]

=======
ENV ECHO_TEXT="hello-world" 
ENTRYPOINT ["./http-echo"]
>>>>>>> 6a7fec1cd26f380df5b4eef21d0e2512afd96bbb
