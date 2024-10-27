# Utiliser l'image officielle de Python avec une version spécifique
FROM python:3.12.3

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le contenu actuel dans le répertoire /app du conteneur
COPY . /app

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port Streamlit
EXPOSE 8501

# Exécuter l'application Streamlit
CMD ["streamlit", "run", "miniprojet.py", "--server.port=8501", "--server.enableCORS=false"]
