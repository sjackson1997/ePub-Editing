import shutil, os, zipfile
from pathlib import Path
import string

subdir1 = 'B:\OneDrive\Documents\ePublications\Beginning Bash Scripting'
subdir2 = 'W:\Computer Studies\Beginning Bash Scripting Edit Together'
subdir3 = 'W:\Computer Studies\Beginning Bash Scripting Extracted'

mylist = list(range(1,26))
chapters=[]

for value in mylist:
    value = 'Chapter-' + str(value)
    chapters.append(value)

myAlpha = list(string.ascii_uppercase)

for value in myAlpha[0:7]:
    value = 'Appendix-' + value
    chapters.append(value)

print(chapters)

for folderName, subfolders, filenames in os.walk(subdir3):
    print('The current folder is ' + folderName)

    for subfolder in subfolders:
        print('SUBFOLDER of ' + folderName + ': ' + subfolder)
        
    for filename in filenames:
        print('FILE INSIDE ' + folderName + ': ' + filename)

    print('')
##for char in range(19):
##    print(char)
##
##if os.path.isdir(subdir2):
##    print('Yes, subdirectory exists!')
##    shutil.rmtree(subdir2)
##else:
##    print('No intelligent life here, Cmdr!')
##
##
##shutil.copytree(subdir1, subdir2)
##
##shutil.rmtree(subdir3)
##
##try:
##    os.mkdir(subdir3)
##except OSError as error:
##    print(error)
##    
##
##for file in os.listdir(subdir2):
##    full_path = os.path.join(subdir2, file)
##    if os.path.isfile(full_path):
####        print(os.path.splitext(full_path)[0])
##        print(Path(full_path).stem)
##        unzip_folder = os.path.join(subdir3, Path(file).stem)
##        with zipfile.ZipFile(full_path, mode='r') as zip_ref:
##            zip_ref.extractall(unzip_folder)
##    
##    
