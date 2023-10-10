from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Olá, mundo! Esta é a minha aplicação Flask rodando em Docker na porta 8080.'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
