// JANUA VERSIONS
// 101 INTRODUCE THE health.meetings server/client procedure ..........................................................
{$DEFINE JANUAVER101}
{$DEFINE DELPHIXE}

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

