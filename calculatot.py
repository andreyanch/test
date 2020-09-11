from flask import Flask
from flask import request

app = Flask(__name__)


@app.route("/", methods=["GET"])
def home():
    return request.args.get("a")


if (__name__ == "__main__"):
    app.run(debug=True)

app.run(host='0.0.0.0', port=5000)
