# App Universitaria - Backend

Backend Spring Boot para la app mobile de apoyo a estudiantes de UNSAdA.

## Que expone

- API REST para modulos por categoria (`Becas`, `Carreras`, `Ingresantes`, etc.)
- API REST para mesas finales
- Seed automatico con contenido inicial al arrancar

## Stack

- Java 21
- Spring Boot
- Maven Wrapper
- MySQL
- Docker Compose

## Puertos y conexion

- Backend HTTP: `http://localhost:8081`
- Base de datos MySQL: `localhost:3307`
- Nombre de base por defecto: `app_universitaria`

El frontend Android consume este backend usando:

- `http://10.0.2.2:8081/` cuando corre en emulador Android

`10.0.2.2` es la forma en que el emulador accede al `localhost` de tu PC.

## Variables importantes

Se toman desde `.env` o desde valores por defecto en `application.properties`.

Valores usados actualmente:

- `SERVER_PORT=8081`
- `DB_HOST=localhost`
- `DB_PORT=3307`
- `DB_NAME=app_universitaria`
- `DB_USERNAME=root`
- `DB_PASSWORD=root`

## Levantar la base de datos

1. Copia `.env.example` a `.env` si queres personalizar valores.
2. Levanta MySQL:

```bash
docker-compose up -d
```

3. Para bajar MySQL:

```bash
docker-compose down
```

## Levantar el backend

Windows:

```bash
.\mvnw.cmd spring-boot:run
```

Git Bash / Linux / macOS:

```bash
./mvnw spring-boot:run
```

Si arranca bien, deberias ver Tomcat en el puerto `8081`.

## Seed de datos

Al arrancar, Spring ejecuta automaticamente:

- `src/main/resources/db/seed_unsada_prioritarios_2026.sql`

Ese archivo es la unica fuente oficial del contenido inicial.

Ese seed carga temas y contenido inicial como:

- Calendario Academico
- Becas
- Plataformas
- Tutorias
- Ingresantes
- Tramites
- Carreras

No se mantiene una segunda copia manual del seed para evitar desalineaciones.

## Reset rapido de base

Si queres recrear todo desde cero:

1. Bajar contenedores:

```bash
docker-compose down
```

2. Borrar volumen:

```bash
docker volume rm app_universitaria_mysql_data
```

3. Levantar otra vez:

```bash
docker-compose up -d
```

## Probar con el frontend

Proyecto Android relacionado:

- `C:\Users\Paul\Downloads\AppInfoUNSAdA-master\AppInfoUNSAdA-master`

Orden recomendado:

1. Levantar MySQL
2. Levantar backend en `8081`
3. Abrir el frontend en Android Studio
4. Ejecutar la app en emulador

## Si no conecta

- Verifica que el backend este en `8081`
- Verifica que MySQL haya levantado en `3307`
- Si usas celular fisico en vez de emulador, `10.0.2.2` no sirve:
  ahi hay que cambiar la URL base del frontend por la IP local de tu PC
