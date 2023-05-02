"""" Sample Application """

import logging
from flask import Flask
from flask.logging import create_logger
from flask import json


app = Flask(__name__)
LOG = create_logger(app)
LOG.setLevel(logging.INFO)


@app.route('/status')
def healthcheck():
    """ Returns a json with status """
    response = app.response_class(
            response=json.dumps({"result":"OK - healthy"}),
            status=200,
            mimetype='application/json'
    )
    LOG.info("status request is served successfully")
    return response

@app.route('/metrics')
def metrics():
    """ Returns a json with metrics """
    response = app.response_class(
            response=json.dumps({"status":"success","data":{"Users":140,"UsersActive":23}}),
            status=200,
            mimetype='application/json'
    )
    LOG.info("metrics request is served successfully")
    return response

@app.route("/")
def hello():
    """ Returns a message """
    LOG.info("landing page is loaded successfully")
    return "Hello World, Welcome Garima!"

if __name__ == "__main__":
    app.run(host='0.0.0.0', port='8080', debug=True)
    