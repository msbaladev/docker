#!/bin/sh



APP_PORT=${PORT:-8010}
cd /app/

/env/bin/gunicorn  docker_app.wsgi:application --bind "0.0.0.0:${APP_PORT}"

# /env//bin/gunicorn  docker_app.wsgi:application