#!/bin/bash

echo "🧱 Preparando entorno..."
mkdir -p site && cd site
wget https://github.com/startbootstrap/startbootstrap-freelancer/archive/refs/heads/gh-pages.zip
unzip gh-pages.zip
mv startbootstrap-freelancer-gh-pages/* .
cd ..

echo "🛠️ Construyendo imagen..."
docker build -t nginx-bootstrap .

echo "🏃 Ejecutando contenedor..."
docker run -d -p 8080:80 nginx-bootstrap

echo ""
echo "✅ Abrí la vista previa del puerto 8080 en Google Cloud Shell (icono de cuadrado con flecha)."
echo "O accedé a la URL que aparece en la terminal luego de levantar el contenedor."


