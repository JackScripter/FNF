# FNF
Files and folders

ren.sh : Remove string in filename
-
USAGE: ./ren.sh "*string to remove*" "*folder path*"
Remove a given string from filename in a directory. This will rename all files that contains the string. It only work on files.
Example:
```diff
user@debian:~/folder1$ ls
(desc)file1.txt  (desc)file2.txt  (desc)file3.txt  (desc)file4.doc ren.sh
user@debian:~$ ./ren.sh "(desc)" "/home/user/folder1"
'/home/user/folder1/(desc)file1.txt' -> '/home/user/folder1/file1.txt'
'/home/user/folder1/(desc)file2.txt' -> '/home/user/folder1/file2.txt'
'/home/user/folder1/(desc)file3.txt' -> '/home/user/folder1/file3.txt'
'/home/user/folder1/(desc)file4.doc' -> '/home/user/folder1/file4.doc'
user@debian:~/folder1$ ls
file1.txt  file2.txt  file3.txt  file4.doc ren.sh
```

create_multi_folders.vbs : Create folders splitted by ';'
-
Enter full path to create directories and then folders name. You can include space in folder name. Example:
```
Path: %USERNAME%\Desktop
Folders name: movie;picture;photos 2018;cars
```
