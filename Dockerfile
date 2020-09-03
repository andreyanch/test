FROM alpine
RUN apk add --no-cache curl  wget  busybox-extras netcat-openbsd py-pip && \
    pip install awscli
RUN apk --purge -v del py-pip
ADD https://github.com/andreyanch/test.git
CMD tail -f /dev/null
