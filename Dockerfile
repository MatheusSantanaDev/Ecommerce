# Use uma imagem base do OpenJDK para Java
FROM openjdk:17-jdk-slim

# Diretório de trabalho
WORKDIR /app

# Copie o arquivo JAR da sua aplicação para o contêiner
COPY target/Ecommerce-0.0.1-SNAPSHOT.jar /app/Ecommerce.jar

# Expor a porta que sua aplicação Spring Boot está ouvindo
EXPOSE 8080

# Comando para iniciar a aplicação quando o contêiner for iniciado
CMD ["java", "-jar", "Ecommerce.jar"]
