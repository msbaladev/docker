#!/bin/sh

set -e


echo "Create migrations"
python manage.py makemigrations
echo "=================================="

echo "Migrate"
python manage.py migrate 
echo "=================================="


echo "Stating server"
# python manage.py runserver 
