import os
import shutil
from sys import platform
packages_dir = ""
if platform == "linux" or platform == "linux2":
    packages_dir = "/home/runner/.local/share/verdaccio/"
elif platform == "darwin":
    packages_dir = "/home/runner/.local/share/verdaccio/"
elif platform == "win32":
    packages_dir = "c:/users/runneradmin/.local/share/verdaccio/"
original_list = {}
try:
    with open("npm-packages.list", "r", encoding="utf-8") as f:
        lines = f.read().split("\n")
        for line in lines:
            if line.strip() != '':
                g, sz = line.split(" ")
                original_list[g] = sz
except Exception as e:
    print('no packages list found', e)
    pass

new_list = {}
for (dirpath, dirnames, filenames) in os.walk(packages_dir):
    for f in filenames:
        relpath = os.path.relpath(dirpath, packages_dir)
        g = os.path.join(relpath, f)
        sz = os.path.getsize(os.path.join(packages_dir, g))
        print(g, sz)
        if not (g in original_list) or (str(original_list[g]) != str(sz)):
            new_list[g] = sz
            original_list[g] = sz
            
with open("npm-packages.list", "w", encoding='utf-8') as f:
    for (g, sz) in original_list.items():
        f.write(f"{g} {sz}\n")
    
os.makedirs("packages", exist_ok=True)
for (f, sz) in new_list.items():
    g = os.path.join("packages", f)
    d = os.path.dirname(g)
    os.makedirs(d, exist_ok=True)
    shutil.copyfile(os.path.join(packages_dir, f), g)

with open(os.path.join("packages", "new_packages.list"), "w", encoding="utf-8") as f:
    for (g, sz) in new_list.items():
        f.write(f"{g} {sz}\n")
        
