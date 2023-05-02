"""" Sample Application """

from flask import Flask
from flask import json


app = Flask(__name__)

@app.route('/status')
def healthcheck():
    """ Returns a json with status """
    response = app.response_class(
            response=json.dumps({"result":"OK - healthy"}),
            status=200,
            mimetype='application/json'
    )

    return response

@app.route('/metrics')
def metrics():
    """ Returns a json with metrics """
    response = app.response_class(
            response=json.dumps({"status":"success","data":{"Users":140,"UsersActive":23}}),
            status=200,
            mimetype='application/json'
    )
    return response

@app.route("/")
def hello():
    """ Returns a message """
    return "Hello World!"

if __name__ == "__main__":
    app.run(host='0.0.0.0')
    