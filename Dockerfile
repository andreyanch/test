FROM python:3.8.2

RUN pip install flask

ADD https://github.com/andreyanch/test/blob/master/calculatot.py ./

EXPOSE 2000

CMD (tail -f /dev/null) && ["python3", "./calculatot.py"]
#CMD tail -f /dev/null
