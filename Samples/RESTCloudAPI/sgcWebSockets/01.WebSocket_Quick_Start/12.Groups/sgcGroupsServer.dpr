program sgcGroupsServer;

uses
  Forms,
  FGroupsServer in 'FGroupsServer.pas' {Form16};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TForm16, Form16);
  Application.Run;
end.
