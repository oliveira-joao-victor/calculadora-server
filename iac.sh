#!/bin/bash

echo "Atualizando o sistema..."
apt-get update
apt-get upgrade -y

echo "Baixando e instalando pacotes necessários..."
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e descompactando aplicação..."
cd /tmp
wget https://github.com/oliveira-joao-victor/calculadora/archive/refs/heads/main.zip
unzip main.zip

echo "Movendo arquivos para o diretório do apache..."
cd calculadora-main
rm -r /var/www/html/*
cp -R * /var/www/html/