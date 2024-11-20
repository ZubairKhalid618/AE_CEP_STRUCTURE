@echo off
set /p foldername="Enter the name for the main Folder: "
set "basepath=C:\Program Files (x86)\Common Files\Adobe\CEP\extensions\%foldername%"

:: Ensure the destination folder exists
mkdir "%basepath%"

:: Copy the folder and its contents to the destination
xcopy "%CD%\CEP_Extension_Structure" "%basepath%\" /E /I /H /Y

:: Open the folder where files were copied
explorer "%basepath%"

echo Folder copied successfully and opened!
pause
