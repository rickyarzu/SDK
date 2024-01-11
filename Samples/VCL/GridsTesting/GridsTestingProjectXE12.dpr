program GridsTestingProjectXE12;

uses
  Vcl.Forms,
  ufrmGridsTestings in 'ufrmGridsTestings.pas' {frmVCLTestGrids},
  udmVirtualAnagraph in '..\..\..\src\januacore\datamodule\udmVirtualAnagraph.pas' {dmVirtualAnagraph: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmVCLTestGrids, frmVCLTestGrids);
  Application.Run;
end.
