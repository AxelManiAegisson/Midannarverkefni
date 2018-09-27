from bottle import *
import urllib.request, json

with urllib.request.urlopen("http://apis.is/petrol") as url:
    data = json.loads(url.read().decode())

@route("/")
def index():
    return template("index.tpl", data=data)
@route("/company/<company>")
def index(company):
    return template("company.tpl", data=data,co=company)
@route("/moreinfo/<key>")
def index(key):
    return template('moreinfo',data=data,k=key)


################################################################################
#                    Nota í flestum kóðum hér fyrir neðann                     #
################################################################################

#Ekki Þetta #################################
@route("/static/<skra>")
def static(skra):
    return static_file(skra, root='./static/')
#############################################
@error(404)
def villa(error):
    return "<h2 style ='color:red> þessi síða fannst ekki</h2> "

run(host='localhost', port=8080, reloader=True,debug=True)
