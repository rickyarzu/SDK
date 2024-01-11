program sgcPresenceServer;

uses
  Forms,
  FPresenceServer in 'FPresenceServer.pas' {Form16};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TForm16, Form16);
  Application.Run;
end.
