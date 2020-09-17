FROM alpine
RUN apk add --no-cache curl  wget  busybox-extras netcat-openbsd py-pip
RUN pip install awscli
RUN pip install flask
#RUN apk --purge -v del py-pip
ADD https://github.com/andreyanch/test/blob/master/calculatot.py ./
EXPOSE 5000
CMD (tail -f /dev/null) && ["python3", "./calculatot.py"] 

