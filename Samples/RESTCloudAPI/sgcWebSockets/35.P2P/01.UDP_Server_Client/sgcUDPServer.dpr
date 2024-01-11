program sgcUDPServer;

uses
  Forms,
  FUDP_Server in 'FUDP_Server.pas' {FRMUDPServer};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TFRMUDPServer, FRMUDPServer);
  Application.Run;
end.
