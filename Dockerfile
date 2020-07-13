FROM golang:1.13 AS builder
WORKDIR /build
COPY go.* /build/
RUN go mod download

COPY cmd/storage-check /build
WORKDIR /build
ENV CGO_ENABLED=0
RUN curl -sfL https://raw.githubusercontent.com/securego/gosec/master/install.sh | sh -s -- -b $GOPATH/bin latest
RUN go build -v
RUN go test -v
RUN gosec -exclude=G107,G109,G304,G601 ./...
RUN groupadd -g 999 user && \
    useradd -r -u 999 -g user user
FROM scratch
COPY --from=builder /etc/passwd /etc/passwd
USER user
COPY --from=builder /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=builder /build/kuberhealthy-storage-check /app/storage-check
ENTRYPOINT ["/app/storage-check"]
