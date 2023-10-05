# Usa una imagen base existente de Docker Hub (por ejemplo, una imagen de Linux)
FROM ubuntu:latest

# Etiqueta de información del autor (opcional)
LABEL maintainer="Natalia Bilbao <natabilbaocano18@.com>"

# Copia archivos locales al sistema de archivos de la imagen
COPY archivo_local /directorio_en_la_imagen/

# Ejecuta comandos en la imagen durante la construcción (puedes tener múltiples instrucciones RUN)
RUN apt-get update && apt-get install -y paquete1 paquete2

# Establece el directorio de trabajo dentro de la imagen
WORKDIR /Users/HP/Desktop/DevOps

# Expone un puerto en la imagen (opcional)
EXPOSE 80

# Ejecuta un comando cuando se inicie el contenedor a partir de esta imagen
CMD ["comando_principal"]
