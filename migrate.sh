#!/bin/sh


SUPERUSER_EMAIL=${DJANGO_SUPERUSER}
cd /app/

/env/bin/python manage.py collectstatic --noinput
/env/bin/python manage.py makemigrations --noinput
/env/bin/python manage.py migrate --noinput
# /env/bin/python manage.py createsuperuser --username $SUPERUSER_EMAIL --noinput || true
