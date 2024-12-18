#!/bin/bash
rm -rf packages/bundle-staging/node_modules packages/bundle-staging/widget.js
#rm -rf  packages/some-react-tsxlib/dist packages/some-react-tsxlib/node_modules
rm -rf  packages/buckaroo-js-core/dist packages/buckaroo-js-core/node_modules
#cd packages/some-react-tsxlib
cd packages/buckaroo-js-core
npm install && npm run build
rm -rf  packages/buckaroo-js-core/node_modules
#cd ../..
cd ../bundle-staging
npm install && npm run build
