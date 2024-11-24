program JanuaAllDemos;

uses
  Vcl.Forms,
  ufrmAllDemosContainer in '..\..\Samples\ufrmAllDemosContainer.pas' {frmAllDemosContainer};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmAllDemosContainer, frmAllDemosContainer);
  Application.Run;
end.
