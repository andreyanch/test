FROM alpine
RUN apk add --no-cache curl  wget  busybox-extras netcat-openbsd py-pip

ADD https://github.com/andreyanch/test/blob/master/calculatot.py ./

RUN pip install flask

EXPOSE 5000

CMD ["python", "/usr/scr/test/calculatot.py"]
