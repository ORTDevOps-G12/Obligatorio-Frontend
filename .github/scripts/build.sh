#!/bin/bash
set -e

# Instalar dependencias
npm install

# Compilar la aplicación
npm run build

# Limpiar directorio de salida
rm -rf ./dist

# Mover archivos compilados a un directorio de salida
mv ./dist ./out
