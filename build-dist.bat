@echo off
echo Building Beep Extension...
echo.

REM Build the React app
call npm run build

echo.
echo Creating distribution package...

REM Create dist-landing folder
if exist dist-landing rmdir /s /q dist-landing
mkdir dist-landing

REM Copy landing page
copy landing\index.html dist-landing\index.html

REM Create extension zip
cd dist
powershell Compress-Archive -Path * -DestinationPath ..\dist-landing\beep-extension.zip -Force
cd ..

echo.
echo Done! 
echo.
echo Files ready in 'dist-landing' folder:
echo   - index.html (Landing page)
echo   - beep-extension.zip (Downloadable extension)
echo.
echo To deploy:
echo   1. Upload the 'dist-landing' folder contents to any static hosting
echo   2. The download button will automatically serve beep-extension.zip
echo.
