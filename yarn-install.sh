rm package.json
rm yarn.lock
cp -f ../package-jsons/package.json package.json
cp -f ../package-jsons/yarn.lock yarn.lock
NPM_CONFIG_REGISTRY=http://localhost:4873 yarn
