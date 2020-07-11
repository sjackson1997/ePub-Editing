import shutil, os, zipfile
from pathlib import Path

subdir1 = 'B:\OneDrive\Documents\ePublications\Beginning Bash Scripting'
subdir2 = 'W:\Computer Studies\Beginning Bash Scripting Edit Together'
subdir3 = 'W:\Computer Studies\Beginning Bash Scripting Extracted'

if os.path.isdir(subdir2):
    print('Yes, subdirectory exists!')
    shutil.rmtree(subdir2)
else:
    print('No intelligent life here, Cmdr!')


shutil.copytree(subdir1, subdir2)

shutil.rmtree(subdir3)

try:
    os.mkdir(subdir3)
except OSError as error:
    print(error)
    

for file in os.listdir(subdir2):
    full_path = os.path.join(subdir2, file)
    if os.path.isfile(full_path):
##        print(os.path.splitext(full_path)[0])
        print(Path(full_path).stem)
        unzip_folder = os.path.join(subdir3, Path(file).stem)
        with zipfile.ZipFile(full_path, mode='r') as zip_ref:
            zip_ref.extractall(unzip_folder)
    
    
