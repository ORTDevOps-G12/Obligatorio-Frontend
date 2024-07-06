#!/bin/bash
set -e

# Instalar dependencias
npm install

# Construir la aplicación React
npm run build --prod
