#!flask/bin/python
from flask import Flask
from flask import request

app = Flask(__name__)


@app.route("/", methods=["GET"])
def home():
    a = request.args.get("a");
    if a == None:
        return "добавте в адресную строку /?a=ХХХ&znak=ХХХ&b=ХХХ вместо XXX поставте число или знак, знак + пропишите %2b "
    else:
        #a = request.args.get("a");
        znak = request.args.get("znak");
        b = request.args.get("b");
        return proverka(a, b, znak)
    
def proverka(a, b, znak):
    if (a.isdigit() == True and b.isdigit() == True and (znak == "/" or znak == "*" or znak == '-' or znak == "+")):
        return raschet(a, b, znak)
    else:
        return "неверный ввод данных"

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


app.run(host='0.0.0.0', port=5000)
