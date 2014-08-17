#!/bin/bash

cat << "PROCFILE" > ${TMP_DIR}/${server_name}.Procfile
server: bundle exec rails server -p $PORT
PROCFILE
cat << "PROCFILE_DEV" > ${TMP_DIR}/${server_name}.Procfile.dev
server: zeus server -p $PORT
PROCFILE_DEV
