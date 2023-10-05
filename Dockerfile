# Usa una imagen base liviana de Node.js
FROM node:14-alpine

# Copia los archivos de la aplicación al contenedor
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

# Copia el archivo README
COPY README.md .

# Expón un puerto (por ejemplo, 3000)
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["npm", "start"]

