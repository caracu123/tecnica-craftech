# CI/CD para NGINX con GitHub Actions

Este repositorio contiene la configuración de un pipeline CI/CD para construir, publicar y desplegar un contenedor de **NGINX** utilizando **GitHub Actions**. El objetivo es automatizar el proceso de creación de imágenes de Docker y su despliegue utilizando `docker-compose`.

## Contenido del repositorio

- `index.html`: Archivo HTML que define la página principal del servidor NGINX.
- `Dockerfile`: Archivo que especifica cómo construir la imagen personalizada de NGINX.
- `docker-compose.yml`: Archivo de configuración para desplegar la aplicación como un servicio utilizando Docker Compose.
- `.github/workflows/ci-cd.yml`: Archivo de configuración del pipeline CI/CD de GitHub Actions.

## Funcionamiento del pipeline

El pipeline CI/CD se compone de dos etapas principales:

1. **Build and Push Docker Image**:
   - Construye una imagen de Docker basada en el archivo `Dockerfile`.
   - Etiqueta la imagen utilizando el secreto `DOCKER_IMAGE`.
   - Publica la imagen en Docker Hub utilizando las credenciales configuradas como secretos en GitHub.

2. **Deploy Application**:
   - Actualiza y despliega la aplicación utilizando `docker-compose`.
   - El archivo `docker-compose.yml` es modificado dinámicamente para usar la última versión de la imagen publicada.

## Configuración de GitHub Actions

### Variables Secretas

Para que el pipeline funcione correctamente, es necesario configurar las siguientes **Secrets** en el repositorio:

- **`DOCKER_USERNAME`**: Nombre de usuario de Docker Hub.
- **`DOCKER_PASSWORD`**: Contraseña o token de acceso de Docker Hub.
- **`DOCKER_IMAGE`**: Nombre completo de la imagen en Docker Hub (formato: `usuario/imagen`).

### Activación del pipeline

El pipeline se activa automáticamente cada vez que se realiza un **push** a la rama `main`. Si se realizan cambios en el archivo `index.html`, el pipeline reconstruirá la imagen y actualizará el despliegue.
