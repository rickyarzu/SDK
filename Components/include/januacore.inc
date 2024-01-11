
// JANUA VERSIONS
// 101 INTRODUCE THE health.meetings server/client procedure ..........................................................
{$DEFINE JANUAVER101}

{$ifdef fpc}
{$mode delphi}{$H+}
{$modeswitch ADVANCEDRECORDS}
{$ELSE}
{$IFDEF LINUX}
{$DEFINE WEBBROKER}
{$ENDIF}
{$IFDEF MSWINDOWS}
{$DEFINE WEBBROKER}
{$ENDIF}
{$endif}

{$IF DECLARED(FireMonkeyVersion)}
  {$DEFINE HAS_FMX}
{$ELSE}
  {$DEFINE HAS_VCL}
{$endif}

{$IFDEF DCC}
   {$DEFINE DELPHIXE}
   {$IF CompilerVersion >= 17.0}
     {$DEFINE HAS_INLINE}
   {$ENDIF}
{$ENDIF}

{$IFDEF VER330}
  {$DEFINE DELPHIRIO}
{$ENDIF}

{$IFDEF VER340}
  {$DEFINE DELPHISIDNEY}
  {$DEFINE DELPHIRIO}
{$ENDIF}   

{$IFDEF VER350}
  {$DEFINE DELPHIALEXANDRIA}
  {$DEFINE DELPHISIDNEY}
  {$DEFINE DELPHIRIO}
{$ENDIF}   
