# Utilizamos una imagen de NGINX
FROM nginx:alpine

# Copiamos el contenido de la carpeta build de nuestra aplicación front en el directorio /usr/share/nginx/html del contenedor
COPY dist /usr/share/nginx/html

# Exponemos el puerto 80 del contenedor, que es donde se ejecuta NGINX
EXPOSE 80

# Iniciamos NGINX dentro del contenedor
CMD ["nginx", "-g", "daemon off;"]