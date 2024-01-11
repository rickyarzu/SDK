program ClientTest;

uses
  Forms,
  uClientTest in 'uClientTest.pas' {frmClientChat};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TfrmClientTest, frmClientTest);
  Application.Run;
end.
