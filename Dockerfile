# Utilise une image Java
FROM openjdk:17-jdk-slim

# Crée un dossier dans le conteneur
WORKDIR /app

# Copie le .jar compilé dans le conteneur
COPY doc/multiplication-0.0.1-SNAPSHOT.jar /app/multiplication.jar

# Commande pour exécuter l'application
ENTRYPOINT ["java", "-jar", "/app/multiplication.jar"]
