from flask import Flask
app = Flask(__name__)

@app.route('/')           # curl http://localhost/
def hello_world():
  return 'Hello, Docker!'
