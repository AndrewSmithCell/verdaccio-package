rm package.json
rm yarn.lock
cp -f ../package-jsons/package.json package.json
# cp -f ../package-jsons/yarn.lock yarn.lock
yarn config set registry http://localhost:4873
yarn --network-concurrency=1
