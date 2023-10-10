# Use a imagem base do Python
FROM python:3.9

# Defina o diretório de trabalho como /app
WORKDIR /app

# Copie o arquivo requirements.txt para o contêiner
COPY requirements.txt requirements.txt

# Instale as dependências
RUN pip install -r requirements.txt

# Copie todos os arquivos do diretório atual para o contêiner
COPY . .

# Defina a variável de ambiente FLASK_APP para o arquivo app.py
ENV FLASK_APP=app.py

# Exponha a porta 8080
EXPOSE 8080

# Comando para executar a aplicação Flask
CMD ["flask", "run", "--host=0.0.0.0", "--port=8080"]