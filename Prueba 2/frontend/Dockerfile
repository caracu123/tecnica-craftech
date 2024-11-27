# Usar Node.js como imagen base
FROM node:16

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar archivos necesarios e instalar dependencias
COPY package.json package-lock.json ./
RUN npm install

# Copiar el resto del código
COPY . .

# Exponer el puerto en el que se ejecutará la aplicación
EXPOSE 3000

# Iniciar el servidor de desarrollo
CMD ["npm", "start"]
