#!/bin/bash
SITE_NAME=erp.example.com

if [ ! -d "/home/frappe/frappe-bench/sites/$SITE_NAME" ]; then
    bench new-site $SITE_NAME --mariadb-user-host-login-scope='%'
fi

bench start
