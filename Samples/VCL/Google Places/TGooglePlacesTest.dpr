program TGooglePlacesTest;

uses
  Vcl.Forms,
  uVCLGooglePlacesMain in 'uVCLGooglePlacesMain.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
