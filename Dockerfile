# Build: sudo docker build -t apache-web .
# Run: sudo docker run -p 80:80 -d --name server apache-web
# Usamos una imagen de Apache
FROM httpd:2.4

# Copiamos los archivos de nuestra aplicación al directorio raíz de Apache
COPY ./Games_virtualization /usr/local/apache2/htdocs/
# Exponemos el puerto para recibir peticiones en el 80
EXPOSE 80
# Ejecutamos apache
CMD ["httpd", "-D", "FOREGROUND"]
