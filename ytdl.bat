:: batch script for using yt-dlp to download highest quality audio
:: streams possible from streaming services 
:: also runs an update check
@echo off

IF %1.==. GOTO end 

ytdlp --update-to nightly -o "~/Music/temp/%%(title)s.%%(ext)s" --cookies-from-browser firefox --no-playlist --extract-audio --audio-format best %1

start explorer.exe "%userprofile%\Music\temp\"

:end
