#!/bin/bash
set -e

superset db upgrade
superset init

exec superset run -h 0.0.0.0 -p 8088 --with-threads --reload
