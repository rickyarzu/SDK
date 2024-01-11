program sgcTelegram;

uses
  Forms,
  FSGCTelegram in 'FSGCTelegram.pas' {FRMSGCTelegram};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TFRMSGCTelegram, FRMSGCTelegram);
  Application.Run;
end.
