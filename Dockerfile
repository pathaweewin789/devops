FROM golang:1.20.4-alpine3.17

WORKDIR /app

COPY go.mod .  
COPY go.sum .  

RUN go mod download  

COPY . .  

RUN go build -o api  

EXPOSE 8081

CMD ["./api"] 