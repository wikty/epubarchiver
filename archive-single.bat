@echo off & setLocal EnableDelayedExpansion

for /F "tokens=1,2,3 delims=/ " %%A in ('Date /t') do @( 
	set fullDate=%%A_%%B_%%C
)

set fileName=%~n1
set fileName=!fileName: =_!

for %%A in (%1) do (
	set folderName=%%~dpA
)

set targetDir=%cd%
if not (%2) == () (
	set targetDir=%2
)

if not exist %targetDir% mkdir %targetDir%

java -jar lib/epubcheck/epubcheck.jar %1 -mode "exp" -save
move %folderName%\!fileName!.epub %targetDir%\!fileName!-!fullDate!.epub