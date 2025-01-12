rm package.json
rm package-lock.json
# cp -f ../package-jsons/package.json package.json
# cp -f ../package-jsons/package-lock.json package-lock.json
NPM_CONFIG_REGISTRY=http://localhost:4873 pnpm create next-app --ts --tailwind --eslint --turbopack --use-pnpm --yes
