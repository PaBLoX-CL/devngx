#!/bin/bash

# cat << NGINX_SITE
cat << NGINX_SITE > $TMP_NGINX
server {
  listen 80;
  server_name ${server_name}.dev;

  location / {
    proxy_pass http://127.0.0.1:${port};
  }
}
NGINX_SITE
