#!flask/bin/python
from flask import Flask
from flask import request

app = Flask(__name__)


@app.route("/", methods=["GET"])
def home():
    a = request.args.get("a")
    znak = request.args.get("znak")
    b = request.args.get("b")
    #return raschet(a, b, znak)
    rerturn "Hello"


def raschet(a, b, znak):
    if znak == '+':
        return str(int(a) + int(b));
    if znak == '-':
        return str(int(a) - int(b));
    if znak == '*':
        return str(int(a) * int(b));
    if znak == '/':
        if (b == '0'):
            return "Infinity"
        else:
            return str(int(a) / int(b));


if (__name__ == "__main__"):
    app.run(debug=True)

app.run(host='0.0.0.0', port=5000)
