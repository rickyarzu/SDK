program sgcClientIoT;

uses
  Forms,
  FsgcClientIoT in 'FsgcClientIoT.pas' {FRMSGCClientIoT};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TFRMSGCClientIoT, FRMSGCClientIoT);
  Application.Run;
end.
