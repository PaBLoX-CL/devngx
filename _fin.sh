#!/bin/bash

# Increment port counting
cat <<DEVNGX_CONF > $DEVNGX_DIR/conf
port=$((port + 1))
DEVNGX_CONF
