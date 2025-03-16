rm package.json
rm pnpm-lock.yaml
cp -f ../package-jsons/package.json package.json
# cp -f ../package-jsons/pnpm-lock.yaml pnpm-lock.yaml
pnpm config set auto-install-peers true
NPM_CONFIG_REGISTRY=http://localhost:4873 pnpm install babel-plugin-react-compiler@19.0.0-beta-e552027-20250112

