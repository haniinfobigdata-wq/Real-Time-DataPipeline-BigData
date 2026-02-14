# Utilise Python 3.8
FROM python:3.8

# Installer git pour pouvoir cloner le repo
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# Crée le dossier de travail
WORKDIR /app

# Cloner le projet depuis GitHub
RUN git clone https://github.com/haniinfobigdata-wq/Real-Time-DataPipeline-BigData.git .

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Commande par défaut
CMD ["python", "./stream_to_kafka.py"]
