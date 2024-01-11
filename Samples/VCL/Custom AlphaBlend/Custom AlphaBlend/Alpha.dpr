program Alpha;

uses
  Vcl.Forms,
  UMain in 'UMain.pas' {FrmMain},
  UFront in 'UFront.pas' {FrmFront},
  UBack in 'UBack.pas' {FrmBack},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
