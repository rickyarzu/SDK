program sgcWhatsApp;

uses
  Forms,
  FWhatsApp in 'FWhatsApp.pas' {FRMWhatsApp};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TFRMWhatsApp, FRMWhatsApp);
  Application.Run;
end.
