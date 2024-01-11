program HTTPAPIServer;

uses
  FastMM4,
  Forms,
  uServerChat in 'uServerChat.pas' {frmHTTPAPIServerChat};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TfrmHTTPAPIServerChat, frmHTTPAPIServerChat);
  Application.Run;
end.
