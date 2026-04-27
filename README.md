# App Universitaria - Backend Setup

This project is a Spring Boot backend with a MySQL database (Docker).

## Prerequisites

- Java 21
- Maven (or use `mvnw` / `mvnw.cmd`)
- Docker + Docker Compose

## Configuration

1. Copy `.env.example` to `.env`.
2. Adjust values if needed (port, credentials, log levels).

Default values:
- `DB_HOST=localhost`
- `DB_PORT=3307`
- `DB_NAME=app_universitaria`
- `DB_USERNAME=root`
- `DB_PASSWORD=root`
- `SERVER_PORT=8081`

## Run Database

Start MySQL:
```bash
docker-compose up -d
```

Stop MySQL:
```bash
docker-compose down
```

MySQL is initialized from `database/app_universitaria.sql` on first startup.

## Run Backend

Windows:
```bash
.\mvnw.cmd spring-boot:run
```

Linux/macOS:
```bash
./mvnw spring-boot:run
```

## Reset Database

If you need to recreate everything from scratch:
1. Stop containers: `docker-compose down`
2. Remove volume: `docker volume rm app_universitaria_mysql_data`
3. Start again: `docker-compose up -d`
