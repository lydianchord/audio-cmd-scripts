@echo off
rem  This script converts all wav files in the current folder into avi files,
rem  which are placed in the "avi" subfolder.
rem  The "avi" subfolder must contain a png for the videos' static image.

rem  FFmpeg is required.

for %%i in ("avi\*.png") do (
    for %%f in (*.wav) do (
        ffmpeg -y -loop 1 -i "%%i" -i %%f -c:a copy -c:v libx264 ^
               -pix_fmt yuv420p -crf 17 -shortest "avi\%%~nf.avi"
	)
    goto :eof
)
