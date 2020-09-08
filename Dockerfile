FROM alpine
RUN apk add --no-cache curl  wget  busybox-extras netcat-openbsd py-pip && \
    pip install awscli
ADD https://github.com/andreyanch/test/blob/master/calculatot.py ./
EXPOSE 5000
CMD (tail -f /dev/null) && ["python3", "./calculatot.py"]

