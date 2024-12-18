#!/bin/bash
rm -rf node_modules src/anyw2_react/static/widget.js
rm -rf  packages/buckaroo-js-core/dist packages/buckaroo-js-core/node_modules
cd packages/buckaroo-js-core
npm install && npm run build

cd ../..
npm install && npm run build
