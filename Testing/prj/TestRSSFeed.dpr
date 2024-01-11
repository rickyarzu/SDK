program TestRSSFeed;

uses
  Vcl.Forms,
  ufrmTestRSS in '..\src\ufrmTestRSS.pas' {frmTestRSS};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTestRSS, frmTestRSS);
  Application.Run;
end.
