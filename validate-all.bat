@echo off

if (%1) == () (
	echo "Please specify the epub data root directory"
	exit /B
)

for /D %%d in ("%1/*") do (
	echo ###### %%d ######
	validate-single.bat %1/%%d
	echo.
)