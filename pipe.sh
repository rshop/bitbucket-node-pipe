#!/usr/bin/env bash

set -e

# move cache folders if present
if [ -d "node_modules_fe" ]; then
    mv node_modules_fe vendor/rshop/frontend/assets/node_modules
fi

if [ -d "node_modules_be" ]; then
    mv node_modules_be vendor/rshop/admin/node_modules
fi

cd vendor/rshop/frontend/assets && npm install
npm install && npm run build
cd vendor/rshop/admin && npm install && gulp build