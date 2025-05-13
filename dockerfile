# Базовый образ OpenJDK 21
FROM eclipse-temurin:21-jdk-alpine

# Рабочая директория
WORKDIR /app

# Копируем JAR из Maven
COPY target/DevCalc-0.0.1-SNAPSHOT.jar app.jar

# Запускаем приложение
ENTRYPOINT ["java", "-jar", "app.jar"]