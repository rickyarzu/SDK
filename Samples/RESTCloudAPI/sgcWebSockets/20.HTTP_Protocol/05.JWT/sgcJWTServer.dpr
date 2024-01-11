program sgcJWTServer;

uses
  Forms,
  FJWT_Server in 'FJWT_Server.pas' {FRMJWTServer};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TFRMJWTServer, FRMJWTServer);
  Application.Run;
end.
