from flask import Flask, jsonify

app = Flask(__name__)


@app.route('/')
def hello_world():
    return jsonify({
        'greeting': 'Hello World! This is exp 10'
    })


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)
