@echo off

if (%1) == () (
	echo "Please specify the epub source root directory"
	exit /B
)

set targetDir=%cd%
if not (%2) == () (
	set targetDir=%2
)

if not exist %targetDir% mkdir %targetDir%

for /D %%d in ("%1/*") do (
	echo ###### %%d ######
	archive-single.bat %1/%%d %targetDir%
	echo.
)