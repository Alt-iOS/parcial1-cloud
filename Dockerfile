FROM httpd:latest
LABEL authors="victor"

RUN useradd -m www

RUN echo "Alias /parcial1 /usr/local/apache2/htdocs/parcial1/index.html" >> /usr/local/apache2/conf/httpd.conf

COPY . /usr/local/apache2/htdocs/parcial1

ENTRYPOINT ["httpd", "-D", "FOREGROUND"]