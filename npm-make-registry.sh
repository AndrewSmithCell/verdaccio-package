python3 npm-registry.py
date=$(date '+%Y%m%d%H%M%S')
"/c/Program Files/7-Zip/7z.exe" a -t7z -mx -m0=LZMA2 -v40m verdaccio-packages-$date.7z packages/ -x!node_modules
git config user.name github-actions
git config user.email github-actions@github.com
git rm -rf packages
git add .
git commit -m "AUTO updated"
git push --force
