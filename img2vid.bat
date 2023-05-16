@echo off
setlocal EnableExtensions EnableDelayedExpansion

rem Define the input images directory path
set /p "IMAGES_DIR=Enter the path of the directory containing the images: "

rem Define the frame rate
set /p "FRAME_RATE=Enter the frame rate for video creation (default is 24): "
if "%FRAME_RATE%"=="" set "FRAME_RATE=24"

rem Define the output video file path
set "OUTPUT_VIDEO=%~dp0output.mp4"

rem Combine the images into a video sequence
echo Combining images into a video sequence...
ffmpeg -framerate %FRAME_RATE% -i "%IMAGES_DIR%\image_%%04d.jpg" -c:v libx264 -pix_fmt yuv420p "%OUTPUT_VIDEO%"

echo Done.
pause
