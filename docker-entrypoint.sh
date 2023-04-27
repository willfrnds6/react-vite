#!/bin/bash
set -e

# installing react with vite
if [[ ! -f /app/package.json ]]; then
  echo "Installing react application with vite ..."
  yarn create vite . --template react
fi

# install dependencies
if [ ! -d /app/node_modules ]; then
  echo "Installing dependencies ..."
  yarn install
fi

#Start react app
echo "Starting application ..."
exec "$@"