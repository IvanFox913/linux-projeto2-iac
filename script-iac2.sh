#!/bin/bash

echo "Atualizando linux..."
apt-get update
apt-get upgrade -y

echo "Instalando apache2..."
apt-get install apache2 -y

echo "Instalando unzip..."
apt-get install unzip -y

echo "Baixando site pre-fabricado da DIO..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "movendo arquivos para o apache..."
cd linux-site-dio-main
cp -R * /var/www/html/

