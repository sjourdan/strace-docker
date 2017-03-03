FROM alpine:3.5
RUN  apk --update --no-cache add strace
CMD ["strace", "-p", "1"]
