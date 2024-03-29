# Usa la imagen base de OpenJDK 11
FROM khipu/openjdk17-alpine

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo JAR construido de tu aplicación Spring Cloud Gateway al directorio de trabajo del contenedor
COPY build/libs/gateway-0.0.1-SNAPSHOT.jar app.jar

# Expone el puerto en el que escucha tu aplicación Spring Cloud Gateway
EXPOSE 8080

# Comando para ejecutar la aplicación Spring Cloud Gateway cuando se inicie el contenedor
CMD ["java", "-jar", "app.jar"]
