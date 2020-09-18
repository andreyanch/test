FROM alpine
RUN apt-get install python3 py-pip

ADD https://github.com/andreyanch/test/blob/master/calculatot.py ./

RUN pip install flask

EXPOSE 5000

CMD ["python", "./calculatot.py"]
