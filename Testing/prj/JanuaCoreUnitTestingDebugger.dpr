program JanuaCoreUnitTestingDebugger;

uses
  Vcl.Forms,
  ufrmJanuaCoreTestingDebug in '..\src\ufrmJanuaCoreTestingDebug.pas' {Form12},
  udmTestFunctionsDataset in '..\src\udmTestFunctionsDataset.pas' {dmTestFunctionsDataset: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm12, Form12);
  Application.CreateForm(TdmTestFunctionsDataset, dmTestFunctionsDataset);
  Application.Run;
end.
