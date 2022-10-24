#!/bin/bash

echo "atualizando o servidor"
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y


echo "Baixando e copiando os arquivos de aplciação"

cd /tmp
wget http://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.z>
unzip main.zip
cd linux-site-dio-main
cp -r * /var/www/html/

echo "Fim..."