# Usa una imagen base de Node.js
FROM node:14

# Establece el directorio de trabajo
WORKDIR /app

# Copia el package.json y package-lock.json (si existe)
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto de los archivos de la aplicación
COPY . .

# Construye la aplicación
RUN npm run build

# Exponer el puerto en el que la aplicación va a correr
EXPOSE 4200

# Comando para iniciar la aplicación
CMD ["npm", "start"]
