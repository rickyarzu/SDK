call "C:\Program Files (x86)\Embarcadero\Studio\21.0\bin\rsvars.bat"
MSBuild %GITHUB%\SDK\prj\DXE13\JanuaLibDXE13.groupproj /t:Build /p:Configuration=Release
if errorlevel 1 goto Fehler

goto :EOF

:Fehler
pause