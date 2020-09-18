FROM python:3.8.2

RUN mkdir -p /usr/src/test
WORKDIR /usr/src/test

COPY . /usr/scr/test

RUN pip install flask

EXPOSE 5000

CMD ["python", "/usr/scr/test/calculatot.py"]
