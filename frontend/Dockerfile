# Imagen base para Node.js
FROM node:16

# Configurar el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar package.json y package-lock.json para aprovechar la caché de Docker
COPY package.json package-lock.json ./

# Asegurarse de instalar todas las dependencias correctamente
RUN npm install --legacy-peer-deps
# RUN npm install
#RUN npm install --save react react-dom react-scripts

# Permisos para el directorio node_modules
RUN chown -R node:node /app/node_modules

# Copiar el código fuente de la aplicación
COPY . .

# Construir la aplicación (opcional, solo para producción)
RUN npm run build || true

# Exponer el puerto de la aplicación React
EXPOSE 3000

# Iniciar el servidor de desarrollo de React
CMD ["npm", "start"]
