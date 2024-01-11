program TestApplication;

uses
  Vcl.Forms,
  ufrmTestApplication in '..\src\TestApplication\ufrmTestApplication.pas' {Form2},
  ufrmMailModelVCL in '..\src\Forms\ufrmMailModelVCL.pas' {frmMailModelVCL},
  ufrmTestMailEditor in '..\src\TestApplication\ufrmTestMailEditor.pas' {frmMailModelVCL2},
  ufrmErgoMainModel in '..\src\Forms\ufrmErgoMainModel.pas' {frmErgoMainModel},
  ufrmTestMainMDI in '..\src\TestApplication\ufrmTestMainMDI.pas' {frmErgoMainModel2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TfrmMailModelVCL2, frmMailModelVCL2);
  Application.CreateForm(TfrmErgoMainModel2, frmErgoMainModel2);
  Application.Run;
end.
