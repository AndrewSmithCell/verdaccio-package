rm package.json
rm package-lock.json
# cp -f ../package-jsons/package.json package.json
# cp -f ../package-jsons/package-lock.json package-lock.json
NPM_CONFIG_REGISTRY=http://localhost:4873 npm install next-i18next react-i18next i18next --force --save
