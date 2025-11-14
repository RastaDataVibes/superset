#!/bin/bash
set -e

superset db upgrade
superset init

gunicorn -w 4 --timeout 120 -b 0.0.0.0:8088 "superset.app:create_app()"
