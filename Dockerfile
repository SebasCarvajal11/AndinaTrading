# Etapa 1: Compilación
FROM eclipse-temurin:21-jdk-jammy AS build
WORKDIR /app
COPY . .
# Damos permisos de ejecución al wrapper de maven y compilamos ignorando los tests
RUN chmod +x mvnw
RUN ./mvnw clean package -DskipTests

# Etapa 2: Ejecución
FROM eclipse-temurin:21-jre-jammy
WORKDIR /app
# Copiamos el .jar generado en la etapa anterior
COPY --from=build /app/target/AndinaTrading-0.0.1-SNAPSHOT.jar app.jar
# Exponemos el puerto
EXPOSE 8080
# Comando de entrada
ENTRYPOINT ["java", "-jar", "app.jar"]