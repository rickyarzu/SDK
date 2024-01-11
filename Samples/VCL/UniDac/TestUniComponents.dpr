program TestUniComponents;

uses
  Vcl.Forms,
  ufrmTestJanuaUniConnection in 'ufrmTestJanuaUniConnection.pas' {frmTestJanuaUniConnection};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTestJanuaUniConnection, frmTestJanuaUniConnection);
  Application.Run;
end.
