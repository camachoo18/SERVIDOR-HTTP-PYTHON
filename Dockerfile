# Usar la imagen oficial de Python
FROM python:3.9-slim

# Establecer el directorio de trabajo en el contenedor
WORKDIR /usr/src/app

# Copiar el contenido de tu directorio local al contenedor
COPY . .

# Exponer el puerto 8000 (que es el predeterminado para `python3 -m http.server`)
EXPOSE 8000

# Ejecutar el servidor HTTP de Python en el puerto 8000
CMD ["python3", "-m", "http.server", "8000"]
