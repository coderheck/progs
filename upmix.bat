@echo off
set upmixstr=upmix_
IF %1.==. goto noInput
IF %2.==. goto noOutput
goto allIO

:noOutput
set outputName=%upmixstr%%1
ffmpeg.exe -i %1 -filter_complex "[0:a]pan=5.1(side)|FL=FL|FR=FR|FC=0.2*FR+0.2*FL|LFE<FL+FR|SL=FL|SR=FR[a]" -map 0 -map -0:a -map "[a]" -c:a flac %outputName%
goto end

:allIO
ffmpeg.exe -i %1 -filter_complex "[0:a]pan=5.1(side)|FL=FL|FR=FR|FC=0.2*FR+0.2*FL|LFE<FL+FR|SL=FL|SR=FR[a]" -map 0 -map -0:a -map "[a]" -c:a flac %2
goto end

:noInput
echo why
goto end

:end