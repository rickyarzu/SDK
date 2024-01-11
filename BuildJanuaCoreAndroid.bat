call "C:\Program Files (x86)\Embarcadero\Studio\20.0\bin\rsvars.bat"
refind %GITHUB%\SDK\prj\JanuaCoreXE103Rio.dproj /L "/P:^\s*<ProjectExtensions\s/>\s*$\r\n" "/R:"
msbuild %GITHUB%\SDK\prj\JanuaCoreXE103Rio.dproj  /t:Build /p:config=Release /p:platform=Android
msbuild %GITHUB%\SDK\prj\JanuaCoreXE103Rio.dproj  /t:Build /p:config=Debug  /p:platform=Android