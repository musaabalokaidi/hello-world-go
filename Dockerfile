FROM golang:1.20.7 as build

WORKDIR /go/src/app
COPY main.go .
RUN go mod init
RUN CGO_ENABLED=0 go build -o /go/bin/app

FROM gcr.io/distroless/static-debian11 as final

COPY --from=build /go/bin/app /
CMD ["/app"]