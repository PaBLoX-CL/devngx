#!/bin/bash

cat << ENVFILE > ${TMP_DIR}/${server_name}.env
PORT=$port
ENVFILE
