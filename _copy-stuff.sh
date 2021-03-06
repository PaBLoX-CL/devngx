#!/bin/bash

sudo \install -vDm644 $TMP_NGINX $NGINX_CONF_DIR/available/${server_name}.conf
if [[ ${activate} == 'yes' ]]; then
  sudo \mkdir -p ${NGINX_CONF_DIR}/enabled
  cd $NGINX_CONF_DIR/enabled
  sudo \ln -sfv ../available/${server_name}.conf ${server_name}.conf
fi

install -vDm644 $TMP_PROCFILE ${dev_dir}/Procfile
install -vDm644 $TMP_PROCFILE_DEV ${dev_dir}/Procfile.dev

install -vDm644 $TMP_ENV ${dev_dir}/.env
