from flask import Flask
app = Flask(__name__)

@app.route("/teste")
def index():
    return 'Tentando CI/CD com Jenkins e Docker na EC2! Teste Deploy'

if __name__ == "__main__":
    app.run()