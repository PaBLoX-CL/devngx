#!/bin/bash

# Manage arguments
server_name=${1}
dev_dir=${2}
if [[ $3 == 'activate' ]]; then
  activate=yes
fi

# Constants
DEVNGX_DIR="${XDG_CONFIG_HOME:-${HOME}/.config}/devngx"
NGINX_CONF_DIR=/etc/nginx/sites
TMP_DIR=$(mktemp -d)

## Set temp files
TMP_NGINX=${TMP_DIR}/${server_name}.nginx.conf
#TMP_PHP_FPM_POOL=${TMP_DIR}/${server_name}.php-fpm.conf
TMP_PROCFILE=${TMP_DIR}/${server_name}.Procfile
TMP_PROCFILE_DEV=${TMP_DIR}/${server_name}.Procfile.dev
TMP_ENV=${TMP_DIR}/${server_name}.env

# Check for the conf file to keep track of the port number
if ! [ -f $DEVNGX_DIR/conf ]; then
  mkdir -p $DEVNGX_DIR
  cat <<DEVNGX_CONF > $DEVNGX_DIR/conf
port=3000
DEVNGX_CONF
fi
source $DEVNGX_DIR/conf
