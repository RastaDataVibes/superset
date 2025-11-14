#!/bin/bash

superset fab create-admin \
   --username "${ADMIN_USERNAME}" \
   --firstname "${ADMIN_FIRSTNAME}" \
   --lastname "${ADMIN_LASTNAME}" \
   --email "${ADMIN_EMAIL}" \
   --password "${ADMIN_PASSWORD}"

superset db upgrade
superset init
