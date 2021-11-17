@echo off
rem  This script converts all wav files in the current folder into mp3 files,
rem  which are placed in the "mp3" subfolder.

rem  FFmpeg is required.

for %%f in (*.wav) do (
    ffmpeg -i "%%f" "mp3\%%~nf.mp3"
)
