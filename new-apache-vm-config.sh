#!/bin/bash

echo "Preparando o servidor"
apt update
apt upgrade -y
apt update
echo 'Instalando programas necessários"
install apache2 -y
install unzip -y
echo "Baixando e configurando site DIO para o Apache"
cd /tmp
wget https://github/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio/main
cp -R * /var/www/html/
