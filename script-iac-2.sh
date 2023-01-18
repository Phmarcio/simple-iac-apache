#!/bin/bash

echo "Atualizando..."
apt-get update -y
apt-get upgrade -y

echo "Baixando e instalando apache e unzip..."
apt-get install apache2 -y
apt-get install unzip -y

echo "baixando e copiando arquivos do git para o apache..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

cd linux-site-dio-main
cp -R * /var/www/html/