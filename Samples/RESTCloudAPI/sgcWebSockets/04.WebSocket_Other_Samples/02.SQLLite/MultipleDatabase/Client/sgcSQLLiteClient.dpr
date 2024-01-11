program sgcSQLLiteClient;

uses
  Vcl.Forms,
  FSQLLiteClient in 'FSQLLiteClient.pas' {FRMSQLLiteClient};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TFRMSQLLiteClient, FRMSQLLiteClient);
  Application.Run;
end.
