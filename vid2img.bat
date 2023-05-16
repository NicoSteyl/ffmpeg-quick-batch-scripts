@echo off
setlocal EnableExtensions EnableDelayedExpansion

rem Define the input video file path (drag and drop the video file onto this .bat file to use)
set /p "VIDEO_FILE=Enter the path of the video file: "

rem Define the output images directory path
set "OUTPUT_DIR=%~dp0img_output"

rem Create the output directory if it doesn't exist
if not exist "%OUTPUT_DIR%" (
    mkdir "%OUTPUT_DIR%"
)

rem Delete any existing images in the directory
if exist "%OUTPUT_DIR%\*.jpg" (
    echo 'Warning - Existing Images will be Deleted!'
    echo.
    pause
    echo Deleting existing images...
    del /q "%OUTPUT_DIR%\*.jpg"
)

rem Ask the user for the frame rate
set /p "FRAME_RATE=Enter the frame rate for image extraction (default is 2): "
if "%FRAME_RATE%"=="" set "FRAME_RATE=2"

rem Convert the video file to an image sequence
echo Converting video to image sequence...
ffmpeg -i "%VIDEO_FILE%" -vf fps=%FRAME_RATE% "%OUTPUT_DIR%\image_%%04d.jpg"

echo.
echo Done. Output directory: "%OUTPUT_DIR%"
pause

rem Open the output directory in Windows File Explorer
explorer "%OUTPUT_DIR%"
