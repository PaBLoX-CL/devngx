#!/bin/bash

sudo install -vDm644 $TMP_NGINX $NGINX_CONF_DIR/available/${server_name}.conf
if [[ ${activate} == 'yes' ]]; then
  sudo mkdir -p ${NGINX_CONF_DIR}/enabled
  sudo ln -sfv ${NGINX_CONF_DIR}/available/${server_name}.conf ${NGINX_CONF_DIR}/enabled/${server_name}.conf
fi
sudo -k

install -vDm644 --owner=${user} --group=${group} $TMP_PROCFILE ${dev_dir}/Procfile
install -vDm644 --owner=${user} --group=${group} $TMP_PROCFILE_DEV ${dev_dir}/Procfile.dev

install -vDm644 --owner=${user} --group=${group} $TMP_ENV ${dev_dir}/.env
