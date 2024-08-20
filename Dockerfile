# Utiliser une image officielle Node.js comme image de base
FROM node:14

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier package.json et package-lock.json dans le conteneur
COPY package*.json ./

# Installer les dépendances du projet
RUN npm install

# Copier tout le reste des fichiers de l'application dans le conteneur
COPY . .

# Exposer le port 8080 pour HTTP
EXPOSE 8080

# Commande pour démarrer l'application
CMD ["npm", "start"]
