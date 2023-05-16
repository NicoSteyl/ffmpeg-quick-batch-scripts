# FFmpeg Quick Scripts - Easily Convert Videos and Images

Prerequisites

Make sure you have FFmpeg installed on your system and added to the system PATH.

vid2img.bat

This script allows you to convert a video into an image sequence. Please note that the script does not support spaces in the file path. Ensure that the file path does not contain spaces for proper execution.

Example:

Incorrect: C:/Program Files/Target/Folder
Correct: C:/ProgramFiles/Target/Folder

When running vid2img.bat, it will prompt you to specify the video file you want to convert. Simply drag and drop the video file onto the script, and it will create a subfolder named "img_output" in the same location as the script. The resulting image sequence will be saved in this subfolder.

img2vid.bat

This script allows you to convert an image sequence into an MP4 video file. The image sequence should be named sequentially, such as "image_0001.jpg", "image_0002.jpg", and so on.

When running img2vid.bat, it will prompt you to specify the directory containing the image sequence. Enter the path to the directory, and the script will then ask for the frame rate you want to use for the video creation. Once the process is complete, an MP4 video file will be generated in the same directory as the script, named "output.mp4".

Please ensure that the image sequence follows the correct naming convention and is located in the specified directory for successful conversion.

Note: Make sure FFmpeg is properly installed and added to the system PATH for these scripts to function correctly.
