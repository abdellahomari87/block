# Utilisez une version plus récente de Python pour assurer la compatibilité avec pytest>=8.3.2
FROM python:3.9-alpine

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Ajouter le fichier requirements.txt dans le conteneur
ADD requirements.txt /app

# Mettre à jour pip et installer les dépendances
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# Ajouter votre script blockchain.py dans le répertoire de travail du conteneur
ADD blockchain.py /app

# Définir la commande par défaut pour démarrer l'application
CMD ["python", "blockchain.py"]
