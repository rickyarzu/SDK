program ClientQuotes;

uses
  Forms,
  fClient in 'fClient.pas' {frmClientQuotes},
  uDMQuotes in 'uDMQuotes.pas' {DMQuotes: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TfrmClientQuotes, frmClientQuotes);
  Application.Run;
end.
