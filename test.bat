@echo off

wmic process where (commandline like "%%ALL-UNNAMED%%" and NAME="javaw.exe") get ProcessID | findstr [0-9] >  C:\Users\bxczp\Desktop\temp.txt

for /F "delims=" %%a in (temp.txt) do (
  set "pid=%%a"
)

"C:\Program Files\Java\jdk1.8.0_241\bin\jinfo" %pid%  > C:\Users\bxczp\Desktop\test2.txt

del /q C:\Users\bxczp\Desktop\temp.txt


