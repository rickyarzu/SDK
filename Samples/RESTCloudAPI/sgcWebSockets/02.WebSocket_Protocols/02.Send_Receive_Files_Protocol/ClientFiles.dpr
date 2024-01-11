program ClientFiles;

uses
  Forms,
  fClientFiles in 'fClientFiles.pas' {FRMClientFiles};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TFRMClientFiles, FRMClientFiles);
  Application.Run;
end.
