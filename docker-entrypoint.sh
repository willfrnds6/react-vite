#!/bin/bash
set -e


# installing react with vite
if [[ ! -d /app ]]; then
  echo "Installing react application with vite ..."
  yarn create vite app --template react
fi

# install dependencies
cd app
echo "Installing dependencies ..."
yarn install

#Start react app
echo "Starting application ..."
exec "$@"