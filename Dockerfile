FROM python:3.8.2
RUN pip install flask
RUN pip install pytz

ADD https://github.com/andreyanch/test/blob/master/calculator.py ./
EXPOSE 5000
CMD (tail -f /dev/null) && ["python3", "./calculator.py"]

