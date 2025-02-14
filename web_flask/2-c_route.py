#!/usr/bin/python3
"""starts a flask web application that listens on 0.0.0.0 port 5000"""

from flask import Flask
app = Flask(__name__)


@app.route('/')
def hello():
    """Returns specified string
    """
    return 'Hello HBNB!'


@app.route('/hbnb')
def hbnb():
    """Returns a specified string
    """
    return 'HBNB'


@app.route('/c/<text>')
def cText(text):
    """Returns text
    """
    return 'C ' + text.replace('_', ' ')

if __name__ == '__main__':
    app.url_map.strict_slashes = False
    app.run(host='0.0.0.0', port=5000)
