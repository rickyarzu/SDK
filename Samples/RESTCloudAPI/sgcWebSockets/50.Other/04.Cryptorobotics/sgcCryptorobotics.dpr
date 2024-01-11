program sgcCryptorobotics;

uses
  Forms,
  FCryptorobotics in 'FCryptorobotics.pas' {FRMCryptorobotics};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TFRMCryptorobotics, FRMCryptorobotics);
  Application.Run;
end.
