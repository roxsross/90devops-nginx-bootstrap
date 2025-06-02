
# 🧪 Reto DevOps Día 1 - ¡Tu primer despliegue en la nube!

¡Bienvenid@ al primer desafío de los **90 Días de DevOps con Roxs**!

---

### 🚀 ¿Qué vas a lograr?

- Desplegar una aplicación estática usando NGINX
- Usar Docker desde Google Cloud Shell
- Ver tu app online sin instalar nada

---

## ✅ Paso 1: Cloná el repositorio

```bash
git clone https://github.com/roxsross/90devops-nginx-bootstrap.git
cd 90devops-nginx-bootstrap
````

---

## ✅ Paso 2: Ejecutá el script

```bash
bash setup.sh
```

Este script:

* Descarga el template del sitio
* Construye una imagen Docker con NGINX
* Levanta el contenedor en el puerto 8080

---

## 🌐 Paso 3: Abrí tu aplicación

🔎 En la parte superior derecha del Cloud Shell hacé clic en el botón
**"Vista previa del puerto 8080"** (ícono 🔳↗️).

Tu sitio se abrirá en una nueva pestaña del navegador.

---

## 🛠️ Paso 4: Verificá tu contenedor

Ver contenedor activo:

```bash
docker ps --filter ancestor=nginx-bootstrap
```

Ver logs del contenedor:

```bash
docker logs $(docker ps -q --filter ancestor=nginx-bootstrap)
```

---

🎉 ¡Listo!
Tu primera app DevOps está corriendo.
¡Nos vemos en el próximo desafío!
