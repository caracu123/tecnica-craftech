#!/bin/sh

if [ "$DATABASE" = "postgres" ]
then
    echo "Waiting for postgres..."

    while ! nc -z $SQL_HOST $SQL_PORT; do
      sleep 0.1
    done

    echo "PostgreSQL started"
fi

# Crear migraciones necesarias
python manage.py makemigrations core

# Aplicar migraciones a la base de datos
python manage.py migrate

# Cargar datos iniciales si es necesario
# python manage.py loaddata initial_data.json

# Colectar archivos estáticos
python manage.py collectstatic --noinput

# Iniciar el servidor Django
python manage.py runserver 0.0.0.0:8000

exec "$@"
