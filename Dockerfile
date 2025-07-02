
FROM python:3.9-slim

WORKDIR /app

# D'abord copier seulement requirements.txt pour mieux utiliser le cache Docker
COPY requirements.txt .

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Puis copier le reste de l'application
COPY . .

# Commande pour lancer l'application
CMD ["python", "./app.py"]
