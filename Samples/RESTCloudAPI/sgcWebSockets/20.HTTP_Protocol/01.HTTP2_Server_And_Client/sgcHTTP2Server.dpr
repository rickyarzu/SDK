program sgcHTTP2Server;

uses
  Forms,
  FHTTP2_Server in 'FHTTP2_Server.pas' {FRMHTTP2Server};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TFRMHTTP2Server, FRMHTTP2Server);
  Application.Run;
end.
