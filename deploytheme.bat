@echo off
hugo
cp -r resources/* themes/tony/resources
cd themes/tony
git add -A
echo Commit: 
set /p commit=
::echo %commit%
git commit -m "%commit%"
git push -u origin master -f
close