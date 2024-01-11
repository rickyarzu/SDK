call "C:\Program Files (x86)\Embarcadero\Studio\20.0\bin\rsvars.bat"
refind Z:\GitHub\SDK\prj\JanuaCoreXE103Rio.dproj /L "/P:^\s*<ProjectExtensions\s/>\s*$\r\n" "/R:"
msbuild Z:\GitHub\SDK\prj\JanuaCoreXE103Rio.dproj  /t:Build /p:config=Release  /p:platform=OSX64
msbuild Z:\GitHub\SDK\prj\JanuaCoreXE103Rio.dproj  /t:Build /p:config=Debug  /p:platform=OSX64