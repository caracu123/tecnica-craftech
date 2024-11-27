# Aplicación Fullstack: React y Django

Este repositorio contiene una aplicación fullstack que combina un backend en Django con un frontend en React. Ambos servicios están completamente dockerizados para facilitar el despliegue.

---

## Requisitos, Despliegue Local y Despliegue en la Nube

### Requisitos

Antes de comenzar, asegúrate de tener instalados los siguientes programas:

- **Docker** (versión 20.10 o superior)
- **Docker Compose** (versión 1.29 o superior)
- Opcional: **Git** para clonar el repositorio

---

### Despliegue Local

#### Paso 1: Clonar el repositorio

Clona el repositorio en tu máquina local:

```bash
git clone <URL_DEL_REPOSITORIO>
cd <NOMBRE_DEL_REPOSITORIO>
```

#### Paso 2: Construir y levantar los servicios

Construye y levanta los contenedores usando Docker Compose:

```bash
docker-compose up --build
```

#### Configuración adicional para problemas de usuarios (opcional)

Si experimentas problemas relacionados con permisos de usuarios al levantar el frontend, como errores en los archivos montados en los volúmenes o conflictos de acceso, puedes solucionarlo exportando las siguientes variables de tu entorno local:

```bash
export UID=$(id -u)
export GID=$(id -g)
```

Esto asegura que el contenedor use el mismo usuario y grupo que tu sistema anfitrión (host).

#### Paso 3: Acceso a los servicios

Una vez que los servicios se hayan iniciado correctamente, puedes acceder a ellos desde tu navegador:

- **Frontend (React):** [http://localhost:3000](http://localhost:3000)
- **Backend (Django):** [http://localhost:8000](http://localhost:8000)

---

### Despliegue en la Nube (AWS)

Puedes desplegar esta aplicación en cualquier servicio de la nube que soporte contenedores Docker, como **AWS ECS** o **AWS Fargate**.

#### Paso 1: Crear imágenes Docker

Primero, genera las imágenes Docker para frontend y backend:

```bash
docker build -t <tu-usuario>/frontend ./frontend
docker build -t <tu-usuario>/backend ./backend
```

#### Paso 2: Subir imágenes a un registro

Sube las imágenes a un registro de contenedores (ejemplo con Docker Hub):

```bash
docker tag <tu-usuario>/frontend <nombre_registro>/frontend
docker tag <tu-usuario>/backend <nombre_registro>/backend

docker push <nombre_registro>/frontend
docker push <nombre_registro>/backend
```

#### Paso 3: Configurar en la nube

  **AWS ECS/Fargate:**
  - Configura un cluster ECS con tareas para el frontend y backend.
  - Usa un Application Load Balancer (ALB) para distribuir el tráfico.

---


#### Reconstruir y reiniciar servicios

Para limpiar y reconstruir los contenedores, usa:

```bash
docker-compose down -v
docker-compose up --build
```

---
