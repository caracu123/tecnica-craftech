# Pruebas Técnicas - Craftech

Este repositorio contiene las soluciones a las pruebas técnicas solicitadas como parte del proceso de selección. A continuación, se detallan las instrucciones para cada prueba, las elecciones tomadas y cómo compilar y desplegar los entregables.

---

## Prueba 1: Diagrama de Red

### Descripción
Se diseñó un diagrama de red utilizando [herramienta de diseño, e.g., Lucidchart], que ilustra la arquitectura propuesta para una aplicación web en AWS/GCP. El diseño considera los siguientes requisitos:

- **Cargas Variables:** Implementación de un Auto Scaling Group para manejar cambios en la demanda.
- **Alta Disponibilidad (HA):** Uso de balanceadores de carga distribuidos en múltiples zonas de disponibilidad.
- **Frontend en JavaScript:** Desplegado en un servicio CDN, respaldado por un bucket S3 o almacenamiento similar.
- **Backend:** 
  - **Base de datos relacional:** Implementación con Amazon RDS o Cloud SQL.
  - **Base de datos no relacional:** Uso de DynamoDB o Firestore para almacenamiento distribuido.
- **Consumo de microservicios externos:** Configuración de VPC Peering o API Gateway para garantizar seguridad y eficiencia.

---

## Prueba 2: Despliegue de una Aplicación Django y React.js

### Descripción
Se desarrolló un entorno dockerizado para una aplicación web con backend en Django y frontend en React.js. Todos los servicios están configurados en un único archivo `docker-compose.yml`, que incluye:

- **Frontend React.js** 
- **Backend Django** 
- **Base de datos** 

### Archivos Relacionados
- `Dockerfile.backend`: Define la configuración para el backend Django.
- `Dockerfile.frontend`: Define la configuración para el frontend React.js.
- `docker-compose.yml`: Configuración para desplegar todos los servicios.
- `README.md`: Detalla los pasos para compilar y desplegar la aplicación en un entorno local y en AWS.

---
## Prueba 3: CI/CD con Nginx

### Descripción
Se configuró un pipeline CI/CD para dockerizar un contenedor de Nginx con el archivo `index.html` por defecto. El pipeline automatiza:

1. Construcción de una nueva imagen de Docker al detectar cambios en el archivo `index.html`.
2. Actualización automática del contenedor en la plataforma de despliegue.

### Plataforma Utilizada
- **GitHub** - **Github Actions**

### Archivos Relacionados
- `Dockerfile`: Configura Nginx para servir `index.html`.
- `.gitlab-ci.yml`: Define los pasos del pipeline CI/CD.
- `index.html`: Provee el servidor Nginx.
- `README.md`: Explica cómo funciona el pipeline y cómo integrarlo con la plataforma.

---
