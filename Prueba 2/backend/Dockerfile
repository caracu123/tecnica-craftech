FROM python:3.9-slim

# Instalar dependencias
RUN apt-get update && apt-get install -y \
    netcat-openbsd gcc libpq-dev && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copiar e instalar requirements
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el codigo de la app
COPY . .

# Copiar y configurar entrypoint script
COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

# Variables de entorno
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Exponer el puerto que va a usar Django
EXPOSE 8000

# Setear el entrypont
ENTRYPOINT ["/app/entrypoint.sh"]
