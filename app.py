from sys import argv

import bottle
from bottle import *

bottle.debug(true)

@route("/")
def index():
    return "Halló heimur"

bottle.run(host= '0,0,0,0', port=argv(1)


