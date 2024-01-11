program ServerFiles;

uses
  Forms,
  fServerFiles in 'fServerFiles.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
