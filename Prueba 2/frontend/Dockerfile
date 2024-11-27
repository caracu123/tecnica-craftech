# Usar Node.js 16 como imagen base
FROM node:16

# Crear y usar un usuario no-root
RUN useradd -ms /bin/bash appuser

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar package.json y package-lock.json, e instalar las dependencias como root
COPY --chown=appuser:appuser package.json package-lock.json ./
RUN npm install

# Copiar el resto del código de la aplicación y asignar la propiedad al usuario appuser
COPY --chown=appuser:appuser . .

# Cambiar al usuario no-root
USER appuser

# Exponer el puerto en el que se ejecutará la aplicación
EXPOSE 3000

# Iniciar el servidor de desarrollo
CMD ["npm", "start"]
