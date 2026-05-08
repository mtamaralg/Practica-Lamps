#!/bin/bash
set -ex

sudo apt update

#Instalar apache
sudo apt install apache2 -y

#Instalar My SQL
sudo apt install mysql-server -y

#Instalar PHP
sudo apt install php libapache2-mod-php php-mysql -y

#Reiniciar servicio de Apache
sudo systemctl restart apache2