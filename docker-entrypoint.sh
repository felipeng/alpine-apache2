#!/bin/sh

HTTPD_PORT="${HTTPD_PORT:=80}"
sed -i "s/^Listen .*/Listen $HTTPD_PORT/" /etc/apache2/httpd.conf
sed -i "s/^#ServerName .*/ServerName $HOSTNAME/" /etc/apache2/httpd.conf
echo ${CUSTOM_VAR:=hello world} > /var/www/localhost/htdocs/index.html
echo ${HOSTNAME} > /var/www/localhost/htdocs/health.html
mkdir -p run/apache2 && chown apache:apache -R /run/apache2
exec /usr/sbin/apachectl -D FOREGROUND
