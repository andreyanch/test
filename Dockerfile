FROM alpine
RUN apk add --no-cache curl  wget  busybox-extras netcat-openbsd py-pip
RUN pip install awscli
#RUN apk --purge -v del py-pip
ADD https://github.com/andreyanch/test/blob/master/calculatot.py ./
EXPOSE 5000
CMD ["python3", "./calculatot.py"] &&  (tail -f /dev/null) 

