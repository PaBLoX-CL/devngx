#!/bin/bash

# Simple utility to create local development environments
# thanks to dnsmasq and nginx
#
# usage:
#
# ./devngx.sh server_name development_directory(full_path) activate(or empty)

# Validations
if [[ "$#" -lt 2 ]]; then
  echo "not enough arguments"
  exit 1
fi

source _devngx-lib.sh
source _variables.sh
source _nginx-create.sh
# source _php-fpm-pool-create.sh
source _procfile-create.sh
source _env-create.sh
source _copy-stuff.sh
source _fin.sh
