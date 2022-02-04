FROM alpine:3.14
RUN apk add --no-cache ffmpeg && apk add --no-cache curl

COPY run.sh .

ENTRYPOINT ["/bin/sh", "run.sh"]
