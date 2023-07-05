RECUPERATORIO DE TALLER DE LENGUAJES DE PROGRAMACIÓN I.

Instalaciones necesarias para el proyecto

Dentro del directorio del proyecto ejecutar:

npm install

Se necesita una base de datos MySQL.

Variables de entorno:

PORT=
DB_NAME=
DB_USER=
DB_PASSWORD=
DB_HOST=
DB_PORT=
DB_DIALECT=

Configuración en el package.json

"scripts": {
"dev" : "nodemon app.js"
}

Ejecutar el proyecto en modo desarrollo:

npm run dev
