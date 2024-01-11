program sgcSQLLiteServer;

uses
  Vcl.Forms,
  FSQLLiteServer in 'FSQLLiteServer.pas' {FRMSQLLiteServer};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TFRMSQLLiteServer, FRMSQLLiteServer);
  Application.Run;
end.
