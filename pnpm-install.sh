rm package.json
rm package-lock.json
cp -f ../package-jsons/package.json package.json
cp -f ../package-jsons/pnpm-lock.yaml pnpm-lock.yaml
NPM_CONFIG_REGISTRY=http://localhost:4873 pnpm install

