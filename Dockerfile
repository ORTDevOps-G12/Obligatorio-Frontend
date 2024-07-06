# Usa una imagen de node como base
FROM node:14-alpine

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos de la aplicación React al contenedor
COPY . .

# Instala las dependencias
RUN npm install

# Construye la aplicación React para producción
RUN npm run build

# Expone el puerto 3000 para que pueda ser accesible desde fuera del contenedor
EXPOSE 3000

# Comando para iniciar la aplicación React
CMD ["npm", "start"]
