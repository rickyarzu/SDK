program sgcCryptohopper;

uses
  Forms,
  FCryptohopper in 'FCryptohopper.pas' {FRMCryptohopper};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TFRMCryptohopper, FRMCryptohopper);
  Application.Run;
end.
